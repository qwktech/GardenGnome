<script>
  import AddItem from '$lib/components/add_item.svelte';

  // data = +page.js load function returns
  let { data } = $props();
</script>


<div class="container">
  <center><h1>{data.pageName}</h1></center>
  <br />
  <div class="row">
    <div class="col-4">
      <AddItem pageName={data.pageName} formInputs={data.formInputs} />
    </div>
  </div>
  <br />
  <div class="row">
    <!-- seeds table -->
  </div>
</div>
