require('./bootstrap');


window.algoliasearch = require('algoliasearch');
require('parsleyjs');

window.algoliaSearchClient = algoliasearch('GFP9DGJG68', 'afbf02e1098267df77f3d5852e3530c8');


Vue.component('p-check',  require('pretty-checkbox-vue/check'));
Vue.component('autocomplete-country', require('./components/AutocompleteCountry.vue'));
Vue.component('autocomplete-unversity', require('./components/AutocompleteUnversity.vue'));
Vue.component('autocomplete-scholarship', require('./components/AutocompleteScholarship.vue'));
Vue.component('autocomplete-degree-type', require('./components/AutoCompleteDegreeType.vue'));
Vue.component('autocomplete-major', require('./components/AutocompleteMejor.vue'));
Vue.component('search-result', require('./components/SearchResults.vue'));
Vue.component('universities', require('./components/Universities.vue'));
Vue.component('scholarships', require('./components/Scholarships.vue'));
Vue.component('institutes', require('./components/Institutes.vue'));
Vue.component('main-search-section', require('./components/MainSearchSection.vue'));
Vue.component('basic-search-section', require('./components/BasicSearchSection.vue'));
Vue.component('p-input', require('pretty-checkbox-vue/input'));
Vue.component('p-radio', require('pretty-checkbox-vue/radio'));
Vue.component('passport-clients',require('./components/passport/Clients.vue'));
Vue.component('passport-authorized-clients',require('./components/passport/AuthorizedClients.vue'));
Vue.component('passport-personal-access-tokens',require('./components/passport/PersonalAccessTokens.vue'));
Vue.component('cards', require('./components/Cards.vue'));


const app = new Vue({
    el: '#app'
});
