# 028-date_and_times.R
# Basic examples for dates and times in R (base + optional lubridate)
# Run interactively to see printed results

# --- Base Date (no time) ---
d1 <- as.Date("2025-11-21")          # ISO: YYYY-MM-DD
d2 <- Sys.Date()                     # today
cat("Date examples:\n")
print(d1)
print(d2)
cat("\nDays between d1 and d2:", as.integer(d1 - d2), "\n\n")

# --- POSIXct / POSIXlt (date-times) ---
dt1 <- as.POSIXct("2025-11-21 14:30:00", tz = "UTC")
dt2 <- Sys.time()                    # current time (with zone)
cat("Date-time examples (POSIXct):\n")
print(dt1)
print(dt2)
cat("\nSeconds between dt1 and dt2:", as.numeric(difftime(dt1, dt2, units = "secs")), "\n\n")

# --- Parsing different string formats ---
s1 <- "21/11/2025 14:30"
s2 <- "Nov 21 2025 02:30 PM"
# base parsing using strptime
parsed1 <- strptime(s1, format = "%d/%m/%Y %H:%M", tz = "UTC")
parsed2 <- strptime(s2, format = "%b %d %Y %I:%M %p", tz = "UTC")
cat("Parsed with strptime:\n")
print(parsed1)
print(parsed2)
cat("\n")

# --- Formatting ---
fmt1 <- format(dt1, "%Y-%m-%d %H:%M:%S %Z")
fmt2 <- format(d1, "%A, %d %B %Y")
cat("Formatted outputs:\n", fmt1, "\n", fmt2, "\n\n")

# --- Time zones ---
ny <- as.POSIXct("2025-11-21 09:00:00", tz = "America/New_York")
lon <- format(ny, tz = "Europe/London", usetz = TRUE)
cat("Time zone conversion example:\n")
print(ny)
cat("Same instant in London (string):", lon, "\n\n")

# --- Sequences and rounding ---
seq_dates <- seq(from = as.Date("2025-01-01"), by = "month", length.out = 6)
cat("Monthly sequence:\n")
print(seq_dates)
cat("\n")

# --- Intervals, durations, periods (lubridate if available) ---
if (requireNamespace("lubridate", quietly = TRUE)) {
    library(lubridate)
    start <- ymd_hms("2025-01-01 00:00:00", tz = "UTC")
    end   <- ymd_hms("2025-11-21 14:30:00", tz = "UTC")
    iv <- interval(start, end)
    dur <- as.duration(iv)     # seconds-based
    per <- as.period(iv)       # human-based (years, months, days...)
    cat("lubridate interval/duration/period:\n")
    print(iv)
    print(dur)
    print(per)
    cat("Round down to start of month (floor_date):", floor_date(end, "month"), "\n\n")
} else {
    cat("lubridate not installed — skipping interval examples. Install with: install.packages('lubridate')\n\n")
}

# --- Practical examples ---
# Determine weekday of a date
cat("Weekday of d1:", weekdays(d1), "\n")
# Add business days (simple example: add 7 calendar days)
cat("d1 + 7 days:", d1 + 7, "\n")

# --- Notes (printed for quick reference) ---
cat("\nNotes:\n",
        "- Date: class 'Date' (days only)\n",
        "- Date-time: POSIXct/POSIXlt (seconds + timezone)\n",
        "- Use strptime/format for custom parsing/formatting, lubridate simplifies many tasks.\n")
