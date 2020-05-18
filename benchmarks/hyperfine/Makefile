# $OpenBSD: Makefile,v 1.1.1.1 2020/05/18 20:44:07 solene Exp $

COMMENT =		command-line benchmarking tool

GH_ACCOUNT =		sharkdp
GH_PROJECT =		hyperfine
GH_TAGNAME =		v1.9.0

CATEGORIES =		benchmarks

# MIT/Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi m pthread

MODULES =		devel/cargo

DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

CONFIGURE_STYLE =	cargo

MODCARGO_CRATES +=      ansi_term       0.11.0  # MIT
MODCARGO_CRATES +=      approx  0.3.2   # Apache-2.0
MODCARGO_CRATES +=      atty    0.2.13  # MIT
MODCARGO_CRATES +=      autocfg 0.1.7   # Apache-2.0/MIT
MODCARGO_CRATES +=      bitflags        1.2.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      bstr    0.2.8   # MIT OR Apache-2.0
MODCARGO_CRATES +=      byteorder       1.3.2   # Unlicense OR MIT
MODCARGO_CRATES +=      cfg-if  0.1.10  # MIT/Apache-2.0
MODCARGO_CRATES +=      clap    2.33.0  # MIT
MODCARGO_CRATES +=      clicolors-control       1.0.1   # MIT
MODCARGO_CRATES +=      cloudabi        0.0.3   # BSD-2-Clause
MODCARGO_CRATES +=      colored 1.9.0   # MPL-2.0
MODCARGO_CRATES +=      console 0.9.1   # MIT
MODCARGO_CRATES +=      csv     1.1.1   # Unlicense/MIT
MODCARGO_CRATES +=      csv-core        0.1.6   # Unlicense/MIT
MODCARGO_CRATES +=      encode_unicode  0.3.6   # MIT/Apache-2.0
MODCARGO_CRATES +=      fuchsia-cprng   0.1.1   # LICENSE
MODCARGO_CRATES +=      indicatif       0.13.0  # MIT
MODCARGO_CRATES +=      itoa    0.4.4   # MIT/Apache-2.0
MODCARGO_CRATES +=      kernel32-sys    0.2.2   # MIT
MODCARGO_CRATES +=      lazy_static     1.4.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      libc    0.2.65  # MIT OR Apache-2.0
MODCARGO_CRATES +=      memchr  2.2.1   # Unlicense/MIT
MODCARGO_CRATES +=      num     0.2.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      num-bigint      0.2.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      num-complex     0.2.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      num-integer     0.1.41  # MIT/Apache-2.0
MODCARGO_CRATES +=      num-iter        0.1.39  # MIT/Apache-2.0
MODCARGO_CRATES +=      num-rational    0.2.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      num-traits      0.2.10  # MIT/Apache-2.0
MODCARGO_CRATES +=      number_prefix   0.3.0   # MIT
MODCARGO_CRATES +=      proc-macro2     1.0.6   # MIT OR Apache-2.0
MODCARGO_CRATES +=      quote   1.0.2   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand    0.6.5   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_chacha     0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_core       0.3.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_core       0.4.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_hc 0.1.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_isaac      0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_jitter     0.1.4   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand_os 0.1.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_pcg        0.1.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_xorshift   0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rdrand  0.4.0   # ISC
MODCARGO_CRATES +=      regex   1.3.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      regex-automata  0.1.8   # Unlicense/MIT
MODCARGO_CRATES +=      regex-syntax    0.6.12  # MIT/Apache-2.0
MODCARGO_CRATES +=      rust_decimal    1.0.3   # MIT
MODCARGO_CRATES +=      ryu     1.0.2   # Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=      serde   1.0.103 # MIT OR Apache-2.0
MODCARGO_CRATES +=      serde_derive    1.0.103 # MIT OR Apache-2.0
MODCARGO_CRATES +=      serde_json      1.0.42  # MIT OR Apache-2.0
MODCARGO_CRATES +=      statistical     1.0.0   # MIT
MODCARGO_CRATES +=      strsim  0.8.0   # MIT
MODCARGO_CRATES +=      syn     1.0.8   # MIT OR Apache-2.0
MODCARGO_CRATES +=      term_size       0.3.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      termios 0.3.1   # MIT
MODCARGO_CRATES +=      textwrap        0.11.0  # MIT
MODCARGO_CRATES +=      unicode-width   0.1.6   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-xid     0.2.0   # MIT OR Apache-2.0
MODCARGO_CRATES +=      winapi  0.2.8   # MIT
MODCARGO_CRATES +=      winapi  0.3.8   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi-build    0.1.1   # MIT
MODCARGO_CRATES +=      winapi-i686-pc-windows-gnu      0.4.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi-x86_64-pc-windows-gnu    0.4.0   # MIT/Apache-2.0

.include <bsd.port.mk>
