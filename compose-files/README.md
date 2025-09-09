# Compose Plugin Examples

This repository contains example configurations for the **compose plugin**.
Each example folder demonstrates how to structure a service setup with Compose.

---

## Structure of Each Example

Each example **must** include the following files:

### 📷 PNG Icon
- A small PNG for list view.
- **Size:** `256x256` or smaller.
- **Naming convention:** Must have the same name as the folder.

### 📄 Compose YAML
- A Compose YAML file named after the folder, with the `.yml` extension.
- **Example:** `example-service.yml`
- The file must include the following header (update date as appropriate):
  ```yaml
  ---
  # Date: 2025-09-01
  ```
- Add commented links to the **GitHub repo**, **Docker Hub page**, or other informative resources.

### ⚙️ Environment File
- A `.env` file named after the folder.
- **Example:** `example-service.env`

### 📝 README
- A `README.md` inside each folder with a **short description** of the example service.

---

## Contribution Notes

🚫 **Do not run any `.sh` files when submitting pull requests.**

---

## Example Layout

```
example-service/
│── example-service.png
│── example-service.yml
│── example-service.env
└── README.md
```
