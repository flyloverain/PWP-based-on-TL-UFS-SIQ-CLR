# Area-Efficient Piecewise-Quadratic Hardware Function Evaluation via Coefficient Bit-Width Optimization

Verilog HDL implementations accompanying the submitted manuscript:

> **Area-Efficient Piecewise-Quadratic Hardware Function Evaluation via Coefficient Bit-Width Optimization**

## Overview

This repository provides hardware implementations of elementary mathematical functions using piecewise-quadratic approximation and coefficient bit-width optimization. The work focuses on area-efficient hardware function evaluation.

All implemented functions target **23-bit precision**.

## Implemented Functions

Each function is organized in a separate directory.

| Directory | Function | Description | Precision |
| --- | --- | --- | --- |
| `exp2/` | `2^x` | Base-2 exponential | 23-bit |
| `log2/` | `log2(x)` | Base-2 logarithm | 23-bit |
| `recip/` | `1/x` | Reciprocal | 23-bit |
| `sqrt/` | `sqrt(x)` | Square root | 23-bit |
| `rsqrt/` | `1/sqrt(x)` | Reciprocal square root | 23-bit |

## Implementation

- **Language:** Verilog HDL.
- **Approximation method:** Piecewise-quadratic approximation.
- **Optimization approach:** Coefficient bit-width optimization.
- **Precision target:** 23-bit for every implemented function.
