<template>
    <div class="form-group col-md-4">
      <input 
      id="typeaheadScholarship"
      required
      type="text"
      name="SelectedName"
      v-model="query"
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

};
</script>


<style scoped>
    .col-md-4{
        padding-right: 1px;
        padding-left: 0;
    }

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