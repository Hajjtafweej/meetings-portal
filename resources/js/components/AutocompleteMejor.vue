<template>
    <div class="form-group">
        <input
                id="majors"
                type="text"
                required
                name="major"
                v-model="query"
                :placeholder="placeholder"
                class="form-control search1"
        >
        <!-- <div v-for="unversity in unversities">
          <h4>
            @{{ unversity.name }} (@{{ unversity.cost }})
          </h4>
        </div> -->
    </div>
</template>

<script>
    export default {
        name: "autoCompleteMajor",
        props: {
            placeholder: ""
        },
        data() {
            return {
                majors: [],
                query: "",
                selected: {}
            };
        },
        mounted: function() {

            this.index = window.algoliaSearchClient.initIndex("alarqam_taggable_tags");
            autocomplete('#majors', { hint: true }, [
                {
                    source: autocomplete.sources.hits(this.index, { hitsPerPage: 5 }),
                    displayKey: "name",
                    templates: {
                        suggestion: function(suggestion) {
                            console.log(suggestion);
                            return (
                                suggestion._highlightResult.name.value
                            );
                        }
                    }
                }
            ]).on("autocomplete:selected", (event, suggestion, dataset) => {
                this.query = suggestion.name;
                this.selected = suggestion;
                // console.log(suggestion, dataset);
            });
        },
        methods: {
            search: _.debounce(function() {
                // If The Type length less then 3 chars return
                // So we do net want to make request!
                if (this.query.length < 3) return;
                this.index.search(this.query, (errors, results) => {
                    this.majors = results.hits;
                });
            }, 500)
        }
    };
</script>


<style>
    input.form-control {
        margin-bottom: 0;
    }
    .algolia-autocomplete {
        width: 100%;
    }
    .algolia-autocomplete .aa-input,
    .algolia-autocomplete .aa-hint {
        width: 100%;
    }
    .algolia-autocomplete .aa-hint {
        color: #999;
    }
    .algolia-autocomplete .aa-dropdown-menu {
        width: 100%;
        background-color: #e3e3e3;
        border: 1px solid #e3e3e3;
        text-align: right;
        position: relative;
        z-index: 2;
        color: rgba(255, 255, 255, 0.15);
    }
    .algolia-autocomplete .aa-dropdown-menu .aa-suggestion {
        cursor: pointer;
        padding: 5px 4px;
        background: white;
        border-bottom: 1px solid #e3e3e3;
        color: #000;
    }
    .algolia-autocomplete .aa-dropdown-menu .aa-suggestion.aa-cursor {
        background-color: #b2d7ff;
    }
    .algolia-autocomplete .aa-dropdown-menu .aa-suggestion em {
        font-weight: bold;
        font-style: normal;
        background: yellow;
    }
    input[type="text"]:-moz-placeholder {
        text-align: right;
    }
    input[type="text"]:-ms-input-placeholder {
        text-align: right;
    }
    input[type="text"]::-webkit-input-placeholder {
        text-align: right;
    }
</style>