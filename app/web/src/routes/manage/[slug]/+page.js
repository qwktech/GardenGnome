import { error } from '@sveltejs/kit';

export async function load({ params }) {
  const pageName = params.slug.charAt(0).toUpperCase() + params.slug.slice(1);

  const regex = /\b\w+(s|es|ies)\b/g;
  const itemName = pageName.replace(regex, (match) => {
    if (match.endsWith("ies")) {
      return match.slice(0, -3) + "y"; // e.g., libraries -> library
    } else if (match.endsWith("es")) {
      return match.slice(0, -2); // e.g., boxes -> box
    } else if (match.endsWith("s") && match.length > 1) {
      return match.slice(0, -1); // e.g., cats -> cat
    }
    return match; // Return the original word if not plural
  });

  // test data
  const formInputs = [
    {
      id: "SeedName",
      label: "Seed Name",
      type: "form-control"
    }
  ]

  return {
    pageName: pageName,
    itemName: itemName,
    formInputs: formInputs
  };
}
