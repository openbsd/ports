# $OpenBSD: Makefile,v 1.37 2021/10/04 06:35:40 landry Exp $

COMMENT =		C bindings generator from rust code

GH_ACCOUNT =		eqrion
GH_PROJECT =		cbindgen
GH_TAGNAME =		v0.20.0

CATEGORIES =		devel

# MPL-2.0
PERMIT_PACKAGE =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

MODCARGO_CRATES +=      ansi_term       0.11.0  # MIT
MODCARGO_CRATES +=      atty    0.2.14  # MIT
MODCARGO_CRATES +=      autocfg 1.0.1   # Apache-2.0 OR MIT
MODCARGO_CRATES +=      bitflags        1.2.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      cfg-if  0.1.10  # MIT/Apache-2.0
MODCARGO_CRATES +=      clap    2.33.3  # MIT
MODCARGO_CRATES +=      cloudabi        0.0.3   # BSD-2-Clause
MODCARGO_CRATES +=      getrandom       0.1.15  # MIT OR Apache-2.0
MODCARGO_CRATES +=      hashbrown       0.9.1   # Apache-2.0/MIT
MODCARGO_CRATES +=      heck    0.3.1   # MIT OR Apache-2.0
MODCARGO_CRATES +=      hermit-abi      0.1.16  # MIT/Apache-2.0
MODCARGO_CRATES +=      indexmap        1.6.0   # Apache-2.0/MIT
MODCARGO_CRATES +=      itoa    0.4.6   # MIT OR Apache-2.0
MODCARGO_CRATES +=      lazy_static     1.4.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      libc    0.2.77  # MIT OR Apache-2.0
MODCARGO_CRATES +=      lock_api        0.3.4   # Apache-2.0/MIT
MODCARGO_CRATES +=      log     0.4.11  # MIT OR Apache-2.0
MODCARGO_CRATES +=      parking_lot     0.10.2  # Apache-2.0/MIT
MODCARGO_CRATES +=      parking_lot_core        0.7.2   # Apache-2.0/MIT
MODCARGO_CRATES +=      ppv-lite86      0.2.9   # MIT/Apache-2.0
MODCARGO_CRATES +=      proc-macro2     1.0.21  # MIT OR Apache-2.0
MODCARGO_CRATES +=      quote   1.0.7   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand    0.7.3   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand_chacha     0.2.2   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand_core       0.5.1   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand_hc 0.2.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      redox_syscall   0.1.57  # MIT
MODCARGO_CRATES +=      remove_dir_all  0.5.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      ryu     1.0.5   # Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=      scopeguard      1.1.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      serde   1.0.116 # MIT OR Apache-2.0
MODCARGO_CRATES +=      serde_derive    1.0.116 # MIT OR Apache-2.0
MODCARGO_CRATES +=      serde_json      1.0.57  # MIT OR Apache-2.0
MODCARGO_CRATES +=      serial_test     0.5.0   # MIT
MODCARGO_CRATES +=      serial_test_derive      0.5.0   # MIT
MODCARGO_CRATES +=      smallvec        1.4.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      strsim  0.8.0   # MIT
MODCARGO_CRATES +=      syn     1.0.41  # MIT OR Apache-2.0
MODCARGO_CRATES +=      tempfile        3.1.0   # MIT OR Apache-2.0
MODCARGO_CRATES +=      textwrap        0.11.0  # MIT
MODCARGO_CRATES +=      toml    0.5.6   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-segmentation    1.6.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-width   0.1.8   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-xid     0.2.1   # MIT OR Apache-2.0
MODCARGO_CRATES +=      vec_map 0.8.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      wasi    0.9.0+wasi-snapshot-preview1    # Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=      winapi  0.3.9   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi-i686-pc-windows-gnu      0.4.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi-x86_64-pc-windows-gnu    0.4.0   # MIT/Apache-2.0

WANTLIB += c c++abi pthread

TEST_ENV =	CC=${CC} CXX=${CXX}

PATCHORIG =	.ports.orig

.include <bsd.port.mk>
