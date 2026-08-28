# Public Portfolio Security Boundary

This repository is a sanitized technical case study. It must not receive production exports or private PBIP artifacts without a fresh review.

## Excluded content

- credentials, tokens, and secrets;
- production server, database, tenant, workspace, and client identifiers;
- connection strings and private URLs;
- customer names, emails, IDs, financial records, and other business data;
- production parameters and local Power BI cache files;
- private report resources or screenshots that reveal operational data.

## Allowed content

- generic architecture and semantic-model documentation;
- sanitized DAX that contains no private literals;
- placeholder Power Query parameters;
- synthetic data labeled with `example_client`;
- redacted screenshots that pass the checklist in `screenshots/README.md`.

Report a suspected disclosure privately to the repository owner. Do not open a public issue containing the sensitive value.

