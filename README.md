# github-audit-logs
---
## Overview

**github-audit-logs** lets you create a local SQLite copy of your organizations Github audit logs. There doesn't appear to be a way to retrieve audit logs via the Github developer API. This gem utilizes the mechanize and nokogiri gems to scrape your organizations audit log page.

## Usage
```
$ github-audit-logs -h
Usage: github_audit_log.rb [options]
    -u, --username USERNAME          Github username
    -p, --password PASSWORD          Github password
    -o, --organization ORG           Github organization
    -s, --sqlite-file FILE           SQLite output file
```

## Working with SQLite

To open a sqlite3 database use the following:

```
$ sqlite3 /path/to/my/output.db
```
The 5 fields present in the Github audit log table are stored as the following sqlite columns:

```
timestamp | username | action | country | type
```

## Current limitations

At the moment this uses the default history selection of 90 days. 

### todo

1. Add audit log filtering
2. Rake tests

