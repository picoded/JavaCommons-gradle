# Changelog

All notable changes to `JavaCommons` will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [4.1.17] - 2026-11-17

### Changed
- Updated `JavaCommons-dstack` submodule to `v4.1.17` adding multi-value IN querying (`queryIn` and `queryIn_id`) with a 100-item maximum limit across SQL, Postgres JSONB, MongoDB, and memory backends.

## [4.1.16] - 2026-11-16

### Changed
- Updated `JavaCommons-dstack` submodule to `v4.1.16` adding native bulk removal (`removeBulk`) support with a 500-item hard limit across SQL, MongoDB, and memory backends.

## [4.1.15] - 2026-11-11

### Changed
- Updated `JavaCommons-module` submodule to `v4.1.15` allowing manually queued tasks (`status = "queued"`) to bypass schedule interval checks.

## [4.1.14] - 2026-10-21

### Changed
- Updated `JavaCommons-module` submodule to `v4.1.14` with optimized `AccountTableCore.queryCount` performance.
