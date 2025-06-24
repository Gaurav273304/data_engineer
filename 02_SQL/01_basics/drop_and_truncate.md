# DROP & TRUNCATE Table (SQL Notes)

## DROP TABLE

- `DROP TABLE` command **delete karta hai poori table ko database se**.
- **Iska use karne ke baad table structure + data dono permanently delete ho jaate hain.**
- Ye operation **irreversible** hota hai.

### ✅ Syntax:

```sql
DROP TABLE table_name;
```

Example

- DROP TABLE Employee;

### Truncate

- TRUNCATE TABLE
- TRUNCATE TABLE command sirf table ke andar ka data delete karta hai, lekin table ka structure (schema) safe rehta hai.

- ye command mostly fast aur efficient hota hai as compared to DELETE.

- Table use ke liye ready rehta hai after truncate.
