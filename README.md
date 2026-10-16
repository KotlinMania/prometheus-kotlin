# prometheus-kotlin in Kotlin

[![GitHub link](https://img.shields.io/badge/GitHub-KotlinMania%2Fprometheus-kotlin-blue.svg)](https://github.com/KotlinMania/prometheus-kotlin)
[![Maven Central](https://img.shields.io/maven-central/v/io.github.kotlinmania/prometheus-kotlin)](https://central.sonatype.com/artifact/io.github.kotlinmania/prometheus-kotlin)
[![Build status](https://img.shields.io/github/actions/workflow/status/KotlinMania/prometheus-kotlin/ci.yml?branch=main)](https://github.com/KotlinMania/prometheus-kotlin/actions)

This is a Kotlin Multiplatform line-by-line transliteration port of [`tikv/rust-prometheus`](https://github.com/tikv/rust-prometheus) (crate `prometheus`).

**Original Project:** This port is based on [`tikv/rust-prometheus`](https://github.com/tikv/rust-prometheus). All design credit and project intent belong to the upstream authors; this repository is a faithful port to Kotlin Multiplatform with no behavioural changes intended.

### Porting status

This is an **in-progress port**. The goal is feature parity with the upstream Rust crate while providing a native Kotlin Multiplatform API. Every Kotlin file carries a `// port-lint: source <path>` header naming its upstream Rust counterpart so the AST-distance tool can track provenance.

---

## Upstream README — `tikv/rust-prometheus`

> The text below is reproduced from [`https://github.com/tikv/rust-prometheus`](https://github.com/tikv/rust-prometheus). It is the upstream project's own description and remains under the upstream authors' authorship; links have been rewritten to absolute upstream URLs where appropriate so they continue to resolve from this repository.

# Prometheus Rust client library

[![Build Status](https://github.com/tikv/rust-prometheus/actions/workflows/rust.yml/badge.svg)](https://github.com/tikv/rust-prometheus/actions/workflows/rust.yml)
[![docs.rs](https://docs.rs/prometheus/badge.svg)](https://docs.rs/prometheus)
[![crates.io](https://img.shields.io/crates/v/prometheus.svg)](https://crates.io/crates/prometheus)

This is the [Rust](https://www.rust-lang.org) client library for
[Prometheus](http://prometheus.io). The main data structures and APIs are ported
from [Go client](https://github.com/prometheus/client_golang).

## Documentation

Find the latest documentation at <https://docs.rs/prometheus>.

## Advanced

### Crate features

This crate provides several optional components which can be enabled via [Cargo `[features]`](https://doc.rust-lang.org/cargo/reference/features.html):

- `protobuf`: Protobuf support, enabled by default.

- `gen`: To generate protobuf client with the latest protobuf version instead of
  using the pre-generated client.

- `nightly`: Enable nightly only features.

- `process`: Enable [process metrics](https://prometheus.io/docs/instrumenting/writing_clientlibs/#process-metrics) support.

- `push`: Enable [push metrics](https://prometheus.io/docs/instrumenting/pushing/) support.

### Static Metric

When using a `MetricVec` with label values known at compile time
prometheus-static-metric reduces the overhead of retrieving the concrete
`Metric` from a `MetricVec`.

See [static-metric](./static-metric) directory for details.

## Thanks

- [brian-brazil](https://github.com/brian-brazil)
- [ccmtaylor](https://github.com/ccmtaylor)
- [kamalmarhubi](https://github.com/kamalmarhubi)
- [lucab](https://github.com/lucab)
- [koushiro](https://github.com/koushiro)

---

## About this Kotlin port

### Installation

```kotlin
dependencies {
    implementation("io.github.kotlinmania:prometheus-kotlin:0.1.0")
}
```

### Building

```bash
./gradlew build
./gradlew test
```

### Targets

- macOS arm64
- Linux x64
- Windows mingw-x64
- iOS arm64 / simulator-arm64 (Swift export + XCFramework)
- JS (browser + Node.js)
- Wasm-JS (browser + Node.js)
- Android (API 24+)

### Porting guidelines

See [AGENTS.md](AGENTS.md) and [CLAUDE.md](CLAUDE.md) for translator discipline, port-lint header convention, and Rust → Kotlin idiom mapping.

### License

This Kotlin port is distributed under the same license terms as the upstream [`tikv/rust-prometheus`](https://github.com/tikv/rust-prometheus). See [LICENSE](LICENSE) (and any sibling `LICENSE-*` / `NOTICE` files mirrored from upstream) for the full text.

Original work copyrighted by the prometheus authors.  
Kotlin port: Copyright (c) 2026 Sydney Renee and The Solace Project.

### Acknowledgments

Thanks to the [`tikv/rust-prometheus`](https://github.com/tikv/rust-prometheus) maintainers and contributors for the original Rust implementation. This port reproduces their work in Kotlin Multiplatform; bug reports about upstream design or behavior should go to the upstream repository.
