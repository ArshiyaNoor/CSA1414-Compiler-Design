# Lexical Analysis and Syntax Checking of Fare Calculation Expressions

## Ride-Sharing Booking System Using CFG-Based Parsing

A simple compiler front-end developed in **Python** to perform lexical analysis and syntax checking of fare calculation expressions used in a ride-sharing booking system.

---

## 📌 Project Overview

This project demonstrates the application of **Compiler Design concepts** to a real-world ride-sharing fare calculation scenario.

The system takes a fare calculation expression such as:

```text
fareAmount = (baseFare + distanceKm * ratePerKm) * surgeMultiplier - promoDiscount
```

and performs two major compiler front-end operations:

1. **Lexical Analysis** – identifies and classifies tokens such as identifiers, constants, operators, delimiters, assignment symbols, and invalid symbols.
2. **Syntax Analysis** – verifies whether the expression follows a predefined **Context-Free Grammar (CFG)** using a recursive-descent parser.

For valid expressions, the system also generates a simplified parse tree.

---

## 🎯 Objectives

* Perform lexical analysis of fare calculation expressions.
* Identify and classify different types of tokens.
* Design a Context-Free Grammar for arithmetic expressions.
* Implement syntax analysis using recursive-descent parsing.
* Construct a parse tree for valid expressions.
* Detect lexical and syntax errors.
* Demonstrate compiler front-end concepts using a real-world application.

---

## 🛠️ Technologies Used

| Technology                    | Purpose                   |
| ----------------------------- | ------------------------- |
| **Python 3**                  | Implementation            |
| **Google Colab**              | Development and execution |
| **Recursive-Descent Parsing** | Syntax analysis           |
| **Custom Hand-Written Lexer** | Lexical analysis          |
| **Context-Free Grammar**      | Expression validation     |
| **GitHub**                    | Source-code management    |

No external Python libraries are required.

---

## 🧩 System Architecture

The project follows this basic flow:

```text
Input Fare Expression
        ↓
Lexical Analyzer
        ↓
Token Generation
        ↓
Recursive-Descent Parser
        ↓
CFG Validation
        ↓
 ┌───────────────┐
 │               │
Valid          Invalid
 │               │
 ↓               ↓
Parse Tree     Error Message
```

---

## 🔤 Token Types

The lexer recognizes the following token categories:

| Token Type | Example            | Description               |
| ---------- | ------------------ | ------------------------- |
| Identifier | `fareAmount`       | Variable or symbolic name |
| Constant   | `100`, `2.5`       | Numeric value             |
| Operator   | `+`, `-`, `*`, `/` | Arithmetic operation      |
| Assignment | `=`                | Assignment operator       |
| Delimiter  | `(`, `)`           | Parentheses               |
| Keyword    | `if`, `else`       | Reserved word, if used    |
| Invalid    | `@`                | Unrecognized symbol       |

For the main expression:

```text
fareAmount = (baseFare + distanceKm * ratePerKm) * surgeMultiplier - promoDiscount
```

the lexer identifies:

```text
('ID', 'fareAmount')
('ASSIGN', '=')
('DELIMITER', '(')
('ID', 'baseFare')
('OPERATOR', '+')
('ID', 'distanceKm')
('OPERATOR', '*')
('ID', 'ratePerKm')
('DELIMITER', ')')
('OPERATOR', '*')
('ID', 'surgeMultiplier')
('OPERATOR', '-')
('ID', 'promoDiscount')
```

---

## 📐 Context-Free Grammar

The following CFG is used for syntax analysis:

```text
Assignment → ID = Expression

Expression → Term Expression'
Expression' → + Term Expression'
            | - Term Expression'
            | ε

Term → Factor Term'
Term' → * Factor Term'
      | / Factor Term'
      | ε

Factor → ( Expression )
       | ID
       | NUMBER
```

The grammar maintains standard arithmetic precedence:

* Parentheses have the highest priority.
* Multiplication and division have higher precedence than addition and subtraction.

---

## ⚙️ Algorithm

### Lexical Analysis

1. Read the input expression.
2. Scan the expression from left to right.
3. Identify identifiers and keywords.
4. Identify numeric constants.
5. Identify operators.
6. Identify delimiters and assignment symbols.
7. Report invalid symbols.
8. Generate and display the token sequence.

### Syntax Analysis

1. Receive tokens from the lexer.
2. Parse the assignment statement.
3. Check the identifier and assignment operator.
4. Parse the expression.
5. Parse terms and factors according to the CFG.
6. Check operators and parentheses.
7. Verify that all tokens are consumed.
8. If valid, generate the parse tree.
9. Otherwise, report a syntax error.

---

## 💻 Implementation

The project uses a **custom hand-written lexer** and a **recursive-descent parser**.

### Main Expression

```text
fareAmount = (baseFare + distanceKm * ratePerKm) * surgeMultiplier - promoDiscount
```

### Lexer

The lexer scans the expression character by character and converts it into a sequence of tokens.

### Parser

The recursive-descent parser uses separate functions corresponding to the grammar structure:

```text
Assignment
Expression
Term
Factor
```

This provides a direct relationship between the CFG and the parser implementation.

---

## 🧪 Test Cases

The system was tested with both valid and invalid expressions.

| Test Case | Input                                                                                | Expected Result                           |
| --------- | ------------------------------------------------------------------------------------ | ----------------------------------------- |
| 1         | `fareAmount = (baseFare + distanceKm * ratePerKm) * surgeMultiplier - promoDiscount` | Valid                                     |
| 2         | `fareAmount = baseFare + distanceKm * ratePerKm`                                     | Valid                                     |
| 3         | `fareAmount = (baseFare + distanceKm)`                                               | Valid                                     |
| 4         | `fareAmount = (baseFare + distanceKm`                                                | Syntax Error – Missing `)`                |
| 5         | `fareAmount = baseFare distanceKm`                                                   | Syntax Error – Missing operator           |
| 6         | `fareAmount = baseFare + @rate`                                                      | Lexical Error – Invalid symbol            |
| 7         | `1fare = baseFare + distanceKm`                                                      | Lexical/Syntax Error – Invalid identifier |
| 8         | `fareAmount = baseFare + * ratePerKm`                                                | Syntax Error – Invalid operator placement |

---

## ❌ Error Detection

The system demonstrates detection of common errors.

### 1. Invalid Symbol

```text
fareAmount = baseFare + @rate
```

Output:

```text
Lexical Error: Invalid symbol @
```

### 2. Mismatched Parentheses

```text
fareAmount = (baseFare + distanceKm
```

Output:

```text
Syntax Error
```

### 3. Missing Operator

```text
fareAmount = baseFare distanceKm
```

Output:

```text
Syntax Error: Unexpected token
```

---

## 🌳 Parse Tree

For a valid expression, the parser generates a simplified parse-tree representation.

Example:

```text
Assignment
├── fareAmount
├── =
└── Expression
    ├── Term
    │   ├── (
    │   └── Expression
    │       ├── baseFare
    │       ├── +
    │       └── distanceKm * ratePerKm
    ├── *
    │   └── surgeMultiplier
    └── -
        └── promoDiscount
```

---

## 📊 Results

The developed compiler front-end successfully performs:

* ✅ Lexical analysis
* ✅ Token classification
* ✅ CFG-based syntax validation
* ✅ Recursive-descent parsing
* ✅ Parse-tree generation
* ✅ Lexical error detection
* ✅ Syntax error detection

For the main fare expression:

```text
Lexical Analysis : SUCCESS
Syntax Analysis  : VALID
Parse Tree       : GENERATED
```

---

## 🌐 Real-World Application

The project represents how compiler techniques can be applied to business-rule expressions used in applications.

A ride-sharing system may use formulas involving:

* Base fare
* Distance charges
* Per-kilometre rates
* Surge multipliers
* Promotional discounts
* Taxes
* Additional charges

Before these formulas are evaluated, their structure can be checked to ensure that malformed expressions do not enter the fare calculation system.

---

## ⏱️ Complexity

### Lexical Analysis

The lexer scans the input from left to right.

**Time Complexity:**

```text
O(n)
```

where `n` is the length of the input expression.

### Syntax Analysis

The recursive-descent parser processes the generated tokens according to the non-ambiguous grammar.

**Time Complexity:**

```text
O(n)
```

where `n` is the number of tokens.

---

## ⚠️ Limitations

* Supports only the grammar defined for this project.
* Advanced programming-language constructs are not supported.
* Error messages could provide more detailed token positions.
* The implementation is intended as an educational compiler front-end rather than a complete production compiler.

---

## 👥 Team Members

| Name                     | Register Number | Contribution              |
| ------------------------ | --------------- | ------------------------- |
| **Arshiya Noor Mohamed** | 192471010       | Lexical Analysis & Report |
| **Sugiritha M**          | 192471020       | Syntax Analysis           |
| **Hoshea Paul**          | 192471019       | Testing & Validation      |
| **Dharshana Sivakumar**  | 192511054       | Documentation             |
| **Swetha K**             | 192311404       | Analysis                  |

---

## 📁 Suggested Repository Structure

```text
Ride-Sharing-Fare-Lexical-Analysis/
│
├── README.md
├── fare_lexical_parser.py
├── screenshots/
│   ├── lexer_output.png
│   ├── parser_output.png
│   ├── parse_tree.png
│   ├── invalid_symbol.png
│   ├── mismatched_parentheses.png
│   └── missing_operator.png
│
└── report/
    └── Compiler_Design_Project_Report.pdf
```

---

## ▶️ How to Run

### Option 1 – Google Colab

1. Open Google Colab.
2. Create a new notebook.
3. Copy the Python implementation into a code cell.
4. Run the cell.
5. Observe the generated tokens, syntax result, and parse tree.

### Option 2 – Local Python

1. Install Python 3.x.
2. Save the source code as:

```text
fare_lexical_parser.py
```

3. Open Command Prompt or Terminal.
4. Navigate to the folder containing the file.
5. Run:

```bash
python fare_lexical_parser.py
```

---

## 📚 References

1. Alfred V. Aho, Monica S. Lam, Ravi Sethi, and Jeffrey D. Ullman, *Compilers: Principles, Techniques, and Tools*, Pearson.
2. Python 3 Documentation.
3. Compiler Design course notes and laboratory materials.
4. Laboratory exercises on Lexical Analysis, Context-Free Grammars, and Syntax Analysis.

-

⭐ **This project demonstrates how lexical analysis and CFG-based syntax analysis can be applied to validate arithmetic business rules in a ride-sharing fare calculation system.**
