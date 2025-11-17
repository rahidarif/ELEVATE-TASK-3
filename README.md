Here’s a **very short and simple version** of the README:

---

# **README – Data Cleaning Task**

### **1. Load the Dataset**

* **Excel:** Open the file → check if all columns are visible and aligned.
* **Python:**

  ```python
  import pandas as pd
  df = pd.read_csv("file.csv")
  ```

### **2. Identify Missing Values**

* **Excel:**

  * Select whole sheet → **Home → Conditional Formatting → Highlight Cells → Blanks**
  * Empty cells will get highlighted.
* **Python:**

  ```python
  df.isnull().sum()
  ```

### **3. Handle Missing Values**

* **Excel:**

  * For numbers → replace with **0** or **average**.
  * For text → replace with **“Not Available”**
    → Use **Find & Select → Go To Special → Blanks → Fill**.
* **Python:**

  ```python
  df.fillna(0, inplace=True)    # for numbers
  df.fillna("Not Available", inplace=True)  # for text
  ```

### **4. Save Cleaned File**

* **Excel:** Save as a new file (cleaned version).
* **Python:**

  ```python
  df.to_csv("cleaned_file.csv", index=False)
  ```

---

If you'd like, I can shorten this even more.
