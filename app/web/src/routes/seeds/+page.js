export async function load() {
  const pageName = "Seeds";
  const formInputs = [
    {
      id: "SeedName",
      label: "Seed Name",
      type: "form-control"
    },
    {
      id: "CommonName",
      label: "Plant Common Name",
      type: "form-control"
    },
    {
      id: "ScientificName",
      label: "Scientific Name",
      type: "form-control"
    },
    {
      id: "Method",
      label: "Method",
      type: "form-select",
      options: ["Transplant","Direct Sow","Both"]
    },
    {
      id: "LightRequirement",
      label: "Light Requirement",
      type: "form-select",
      options: ["Full Light", "Partial Shade"]
    },
    {
      id: "DaysToHarvest",
      label: "Days to Harvest",
      type: "form-control"
    },
    {
      id: "Link",
      label: "Link",
      type: "form-control"
    },
    {
      id: "PurchaseYear",
      label: "Purchase Year",
      type: "form-control"
    },
    {
      id: "Photo",
      label: "Photo",
      type: "file"
    }
  ];

  return {
    pageName: pageName,
    formInputs: formInputs
  };
}
