# Semantic Model

This document is a sanitized inventory of the verified semantic model. It contains schema concepts only and no production data, source values, or lineage identifiers.

## Fact tables

| Table | Verified analytical fields |
|---|---|
| `fact_ventas` | sale and line identifiers, date, customer, product, channel, payment method, quantity, unit price, subtotal, discount, cost, total, status |
| `fact_gastos` | expense identifiers, date, supplier, expense category, payment method, amount, financial classification, payment status |
| `fact_compras` | purchase and line identifiers, date, supplier, product, quantity, unit cost, amount, status |
| `fact_inventario` | inventory and movement identifiers, date, product, movement type, quantity, unit cost, value |

## Dimension tables

| Table | Verified descriptive fields |
|---|---|
| `dim_fecha` | date, year, month, day, quarter, date key |
| `dim_cliente` | customer key, customer identifier, name |
| `dim_producto_servicio` | product identifier, code, name, category, product key |
| `dim_canal` | channel identifier, code, description, channel key |
| `dim_metodo_pago` | payment-method identifier, code, description, payment-method key |
| `dim_gasto` | expense identifier, category, subcategory, expense key |
| `dim_proveedor` | supplier identifier, code, name, supplier key |
| `dim_ubicacion` | location identifier, code, city, country |

The model also contains a dedicated technical measures table and Power BI-managed date structures. `dim_ubicacion` exists in the verified table inventory but is not represented in the relationship metadata summarized below.

## Verified relationships

| Fact table | Dimension table | Key |
|---|---|---|
| `fact_ventas` | `dim_fecha` | `fecha_key` |
| `fact_ventas` | `dim_cliente` | `cliente_key` |
| `fact_ventas` | `dim_producto_servicio` | `producto_key` |
| `fact_ventas` | `dim_canal` | `canal_key` |
| `fact_ventas` | `dim_metodo_pago` | `metodo_pago_key` |
| `fact_gastos` | `dim_fecha` | `fecha_key` |
| `fact_gastos` | `dim_proveedor` | `proveedor_key` |
| `fact_gastos` | `dim_gasto` | `gasto_key` |
| `fact_gastos` | `dim_metodo_pago` | `metodo_pago_key` |
| `fact_compras` | `dim_fecha` | `fecha_key` |
| `fact_compras` | `dim_proveedor` | `proveedor_key` |
| `fact_compras` | `dim_producto_servicio` | `producto_key` |
| `fact_inventario` | `dim_fecha` | `fecha_key` |
| `fact_inventario` | `dim_producto_servicio` | `producto_key` |

## Modeling notes

- Business calculations are centralized in the `DAX measures` table.
- Measures are grouped into Executive, Sales, Expenses, Purchases, Inventory, and Time Intelligence folders.
- Purchase measures use `TREATAS` to make the intended date filter context explicit.
- This public inventory omits data types, source expressions, lineage tags, annotations, and production connection metadata.

