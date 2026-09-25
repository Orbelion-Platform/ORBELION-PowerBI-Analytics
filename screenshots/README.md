# Screenshot Publication Checklist

This directory is reserved for future sanitized dashboard exports. The current publication-ready examples live in `docs/assets/` and use synthetic `EXAMPLE CLIENT` data.

Before adding an image:

- use only synthetic data associated with `example_client`;
- remove customer and supplier names, emails, account identifiers, and document numbers;
- remove workspace, tenant, server, database, and private URL references;
- inspect chart labels, slicer values, filters, tooltips, titles, and browser chrome;
- inspect image metadata and the full-resolution export;
- confirm that totals cannot be traced to production financial data;
- run the repository sensitive-reference scan again.

Suggested filenames:

- `executive-overview-synthetic.png`
- `sales-analysis-synthetic.png`
- `inventory-analysis-synthetic.png`

Only synthetic assets should be linked from the public README. Local source screenshots must remain ignored by Git and must never be staged.
