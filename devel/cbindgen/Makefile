# $OpenBSD: Makefile,v 1.14 2019/05/23 12:05:15 landry Exp $

COMMENT =		C bindings generator from rust code

GH_ACCOUNT =		eqrion
GH_PROJECT =		cbindgen
GH_TAGNAME =		v0.8.7

CATEGORIES =		devel

# MPL-2.0
PERMIT_PACKAGE_CDROM =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MODCARGO_CRATES +=      ansi_term       0.11.0  # MIT
MODCARGO_CRATES +=      atty    0.2.11  # MIT
MODCARGO_CRATES +=      autocfg 0.1.2   # Apache-2.0/MIT
MODCARGO_CRATES +=      bitflags        1.0.4   # MIT/Apache-2.0
MODCARGO_CRATES +=      cfg-if  0.1.6   # MIT/Apache-2.0
MODCARGO_CRATES +=      clap    2.32.0  # MIT
MODCARGO_CRATES +=      cloudabi        0.0.3   # BSD-2-Clause
MODCARGO_CRATES +=      fuchsia-zircon  0.3.3   # BSD-3-Clause
MODCARGO_CRATES +=      fuchsia-zircon-sys      0.3.3   # BSD-3-Clause
MODCARGO_CRATES +=      itoa    0.4.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      libc    0.2.47  # MIT OR Apache-2.0
MODCARGO_CRATES +=      log     0.4.6   # MIT/Apache-2.0
MODCARGO_CRATES +=      proc-macro2     0.4.25  # MIT/Apache-2.0
MODCARGO_CRATES +=      quote   0.6.10  # MIT/Apache-2.0
MODCARGO_CRATES +=      rand    0.6.4   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_chacha     0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_core       0.3.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_hc 0.1.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_isaac      0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_os 0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_pcg        0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_xorshift   0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rdrand  0.4.0   # ISC
MODCARGO_CRATES +=      redox_syscall   0.1.50  # MIT
MODCARGO_CRATES +=      redox_termios   0.1.1   # MIT
MODCARGO_CRATES +=      remove_dir_all  0.5.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rustc_version   0.2.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      ryu     0.2.7   # Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=      semver  0.9.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      semver-parser   0.7.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      serde   1.0.84  # MIT/Apache-2.0
MODCARGO_CRATES +=      serde_derive    1.0.84  # MIT/Apache-2.0
MODCARGO_CRATES +=      serde_json      1.0.36  # MIT/Apache-2.0
MODCARGO_CRATES +=      strsim  0.7.0   # MIT
MODCARGO_CRATES +=      syn     0.15.26 # MIT/Apache-2.0
MODCARGO_CRATES +=      tempfile        3.0.5   # MIT/Apache-2.0
MODCARGO_CRATES +=      termion 1.5.1   # MIT
MODCARGO_CRATES +=      textwrap        0.10.0  # MIT
MODCARGO_CRATES +=      toml    0.4.10  # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-width   0.1.5   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-xid     0.1.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      vec_map 0.8.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi  0.3.6   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi-i686-pc-windows-gnu      0.4.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi-x86_64-pc-windows-gnu    0.4.0   # MIT/Apache-2.0

WANTLIB += c c++abi m pthread

.include <bsd.port.mk>
