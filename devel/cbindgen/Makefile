# $OpenBSD: Makefile,v 1.29 2020/04/12 06:28:05 landry Exp $

COMMENT =		C bindings generator from rust code

GH_ACCOUNT =		eqrion
GH_PROJECT =		cbindgen
GH_TAGNAME =		v0.14.1

CATEGORIES =		devel

# MPL-2.0
PERMIT_PACKAGE =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

MODCARGO_CRATES +=      ansi_term       0.11.0  # MIT
MODCARGO_CRATES +=      atty    0.2.13  # MIT
MODCARGO_CRATES +=      bitflags        1.2.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      c2-chacha       0.2.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      cfg-if  0.1.10  # MIT/Apache-2.0
MODCARGO_CRATES +=      clap    2.33.0  # MIT
MODCARGO_CRATES +=      getrandom       0.1.13  # MIT OR Apache-2.0
MODCARGO_CRATES +=      itoa    0.4.4   # MIT/Apache-2.0
MODCARGO_CRATES +=      libc    0.2.66  # MIT OR Apache-2.0
MODCARGO_CRATES +=      log     0.4.8   # MIT OR Apache-2.0
MODCARGO_CRATES +=      ppv-lite86      0.2.6   # MIT/Apache-2.0
MODCARGO_CRATES +=      proc-macro2     1.0.6   # MIT OR Apache-2.0
MODCARGO_CRATES +=      quote   1.0.2   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand    0.7.2   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand_chacha     0.2.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_core       0.5.1   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand_hc 0.2.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      redox_syscall   0.1.56  # MIT
MODCARGO_CRATES +=      remove_dir_all  0.5.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      ryu     1.0.2   # Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=      serde   1.0.104 # MIT OR Apache-2.0
MODCARGO_CRATES +=      serde_derive    1.0.104 # MIT OR Apache-2.0
MODCARGO_CRATES +=      serde_json      1.0.44  # MIT OR Apache-2.0
MODCARGO_CRATES +=      strsim  0.8.0   # MIT
MODCARGO_CRATES +=      syn     1.0.11  # MIT OR Apache-2.0
MODCARGO_CRATES +=      tempfile        3.1.0   # MIT OR Apache-2.0
MODCARGO_CRATES +=      textwrap        0.11.0  # MIT
MODCARGO_CRATES +=      toml    0.5.5   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-width   0.1.7   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-xid     0.2.0   # MIT OR Apache-2.0
MODCARGO_CRATES +=      vec_map 0.8.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      wasi    0.7.0   # Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=      winapi  0.3.8   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi-i686-pc-windows-gnu      0.4.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi-x86_64-pc-windows-gnu    0.4.0   # MIT/Apache-2.0

WANTLIB += c c++abi pthread

TEST_ENV =	CC=${CC} CXX=${CXX}

PATCHORIG =	.ports.orig

.include <bsd.port.mk>
