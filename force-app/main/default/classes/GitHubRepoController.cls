public with sharing class GitHubRepoController {
    @AuraEnabled(cacheable=true)
    public static List<Map<String, String>> getRepositories(String username) {
        String url = 'https://api.github.com/users/' + username + '/repos';
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url);
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        List<Map<String, String>> repos = new List<Map<String, String>>();
        
        if (response.getStatusCode() == 200) {
            List<Object> repoList = (List<Object>) JSON.deserializeUntyped(response.getBody());
            for (Object obj : repoList) {
                Map<String, Object> repo = (Map<String, Object>) obj;
                repos.add(new Map<String, String>{
                    'name' => (String) repo.get('name'),
                    'description' => (String) repo.get('description'),
                    'url' => (String) repo.get('html_url'),
                    'stars' => String.valueOf(repo.get('stargazers_count')),
                    'forks' => String.valueOf(repo.get('forks_count'))
                });
            }
        }
        return repos;
    }
}