# $OpenBSD: Makefile,v 1.21 2019/09/04 06:31:08 landry Exp $

COMMENT =		C bindings generator from rust code

GH_ACCOUNT =		eqrion
GH_PROJECT =		cbindgen
GH_TAGNAME =		v0.9.1
REVISION =		0

CATEGORIES =		devel

# MPL-2.0
PERMIT_PACKAGE =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

MODCARGO_CRATES_UPDATE +=	libc

MODCARGO_CRATES +=      ansi_term       0.11.0  # MIT
MODCARGO_CRATES +=      atty    0.2.11  # MIT
MODCARGO_CRATES +=      autocfg 0.1.4   # Apache-2.0/MIT
MODCARGO_CRATES +=      bitflags        1.1.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      cfg-if  0.1.9   # MIT/Apache-2.0
MODCARGO_CRATES +=      clap    2.33.0  # MIT
MODCARGO_CRATES +=      cloudabi        0.0.3   # BSD-2-Clause
MODCARGO_CRATES +=      fuchsia-cprng   0.1.1   # LICENSE
MODCARGO_CRATES +=      itoa    0.4.4   # MIT/Apache-2.0
MODCARGO_CRATES +=      libc    0.2.63  # MIT OR Apache-2.0
MODCARGO_CRATES +=      log     0.4.6   # MIT/Apache-2.0
MODCARGO_CRATES +=      numtoa  0.1.0   # MIT OR Apache-2.0
MODCARGO_CRATES +=      proc-macro2     1.0.0   # MIT OR Apache-2.0
MODCARGO_CRATES +=      quote   1.0.0   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand    0.6.5   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_chacha     0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_core       0.3.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_core       0.4.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_hc 0.1.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_isaac      0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_jitter     0.1.4   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand_os 0.1.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_pcg        0.1.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_xorshift   0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rdrand  0.4.0   # ISC
MODCARGO_CRATES +=      redox_syscall   0.1.54  # MIT
MODCARGO_CRATES +=      redox_termios   0.1.1   # MIT
MODCARGO_CRATES +=      remove_dir_all  0.5.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      ryu     0.2.8   # Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=      serde   1.0.93  # MIT OR Apache-2.0
MODCARGO_CRATES +=      serde_derive    1.0.99  # MIT OR Apache-2.0
MODCARGO_CRATES +=      serde_json      1.0.39  # MIT/Apache-2.0
MODCARGO_CRATES +=      strsim  0.8.0   # MIT
MODCARGO_CRATES +=      syn     1.0.1   # MIT OR Apache-2.0
MODCARGO_CRATES +=      tempfile        3.0.8   # MIT/Apache-2.0
MODCARGO_CRATES +=      termion 1.5.3   # MIT
MODCARGO_CRATES +=      textwrap        0.11.0  # MIT
MODCARGO_CRATES +=      toml    0.5.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-width   0.1.5   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-xid     0.2.0   # MIT OR Apache-2.0
MODCARGO_CRATES +=      vec_map 0.8.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi  0.3.7   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi-i686-pc-windows-gnu      0.4.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi-x86_64-pc-windows-gnu    0.4.0   # MIT/Apache-2.0

WANTLIB += c c++abi m pthread

TEST_ENV =	CC=${CC} CXX=${CXX}

PATCHORIG =	.ports.orig

.include <bsd.port.mk>
