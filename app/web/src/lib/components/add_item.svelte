<script>
  let { pageName, itemName, formInputs } = $props();
</script>

{#snippet fromCol(colData)}
  <div class="col">
    <label for={colData.id} class="form-label">{colData.label}</label>
    {#if colData.type == "form-control"}
      <input id={colData.id} class={colData.type}>
    {:else if colData.type == "file"}
      <input id={colData.id} class="form-control" type={colData.type}>
    {:else if colData.type == "form-select"}
      <select id={colData.id} class={colData.type}>
      <option selected></option>
      {#each colData.options as option}
        <option value={option}>{option}</option>
      {/each}
      </select>
    {/if}
  </div>
{/snippet}

<!-- Button trigger add item modal -->
<button 
  type="button" 
  class="btn btn-primary" 
  data-bs-toggle="modal" 
  data-bs-target="#addItemModal"
  >
  Add {itemName}
</button>

<!-- Add item modal -->
<div 
  class="modal fade" 
  id="addItemModal" 
  tabindex="-1" 
  aria-labelledby="addItemModal"
  aria-hidden="true"
  >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h2 class="modal-title fs-5" id="exampleModalLabel">Add a {itemName}</h2>
        <button
          type="button"
          class="btn-close"
          data-bs-dismiss="modal"
          aria-label="Close"
          ></button>
      </div>
      <div class="modal-body">
        <div id="liveAlertPlaceholder"></div>
        <div class="container"> 
          <form>
            <div class="row row-cols-1">
              {#each formInputs as colData}
                {@render fromCol(colData)}
              {/each}
            </div>
            <br />
            <div class="row">
              <div class="col-4">
                <button type="button" class="btn btn-primary" id="addItemButton">Add</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>


