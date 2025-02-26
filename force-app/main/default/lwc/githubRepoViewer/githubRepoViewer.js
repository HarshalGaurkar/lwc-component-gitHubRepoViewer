import { LightningElement, track } from 'lwc';
import getRepositories from '@salesforce/apex/GitHubRepoController.getRepositories';

export default class GithubRepoViewer extends LightningElement {
    @track username = '';
    @track repositories = [];
    @track error;
    @track loading = false;

    handleInputChange(event) {
        this.username = event.target.value;
    }

    fetchRepos() {
        if (!this.username) {
            this.error = 'Please enter a GitHub username.';
            this.repositories = [];
            return;
        }

        this.loading = true;
        this.error = undefined;

        getRepositories({ username: this.username })
            .then((data) => {
                this.repositories = data.length ? data : [];
                this.error = data.length ? undefined : 'No repositories found.';
            })
            .catch(() => {
                this.error = 'Failed to fetch repositories. Check the username.';
                this.repositories = [];
            })
            .finally(() => {
                this.loading = false;
            });
    }
}