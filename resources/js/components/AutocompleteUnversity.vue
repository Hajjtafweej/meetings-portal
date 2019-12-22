<template>
    <div class="form-group">
      <input 
      id="typeaheadUnversity"
      type="text"
      required
      name="SelectedName"
      v-model="query"
      :placeholder="placeholder"
      v-on:keyup="search"
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
  props: {
    placeholder: ""
  },
  data() {
    return {
      unversities: [],
      query: "",
      selected: {}
    };
  },

  mounted: function() {
    this.client = algoliasearch(
      "GFP9DGJG68",
      "afbf02e1098267df77f3d5852e3530c8"
    );
    this.index = this.client.initIndex("alarqam_unversities");

    autocomplete('#typeaheadUnversity', { hint: true }, [
      {
        source: autocomplete.sources.hits(this.index, { hitsPerPage: 5 }),
        displayKey: "name",
        templates: {
          suggestion: function(suggestion) {
            return (
              suggestion._highlightResult.name.value
            );
          }
        }
      }
    ]).on("autocomplete:selected", (event, suggestion, dataset) => {
      this.query = suggestion.name;
      this.selected = suggestion;

      console.log(suggestion, dataset);
    });
  },
  methods: {
    search: _.debounce(function() {
      // If The Type length less then 3 chars return
      // So we do net want to make request!
      if (this.query.length < 3) return;

      this.index.search(this.query, (errors, results) => {
        this.unversities = results.hits;
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