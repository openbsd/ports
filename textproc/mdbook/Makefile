# $OpenBSD: Makefile,v 1.2 2020/03/02 07:13:55 semarie Exp $

COMMENT =		create books from markdown files

GH_ACCOUNT =            rust-lang
GH_PROJECT =            mdBook
GH_TAGNAME =            v0.3.5
PKGNAME =               ${DISTNAME:L}

CATEGORIES =		textproc www
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# MPL-2.0 + dependencies below.
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi m pthread

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo

MODCARGO_CRATES +=      aho-corasick    0.7.6   # Unlicense/MIT
MODCARGO_CRATES +=      ammonia 3.0.0   # MIT OR Apache-2.0
MODCARGO_CRATES +=      ansi_term       0.11.0  # MIT
MODCARGO_CRATES +=      atty    0.2.13  # MIT
MODCARGO_CRATES +=      autocfg 0.1.7   # Apache-2.0/MIT
MODCARGO_CRATES +=      backtrace       0.3.40  # MIT/Apache-2.0
MODCARGO_CRATES +=      backtrace-sys   0.1.32  # MIT/Apache-2.0
MODCARGO_CRATES +=      base64  0.9.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      bit-set 0.5.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      bit-vec 0.5.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      bitflags        1.2.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      block-buffer    0.7.3   # MIT OR Apache-2.0
MODCARGO_CRATES +=      block-padding   0.1.5   # MIT OR Apache-2.0
MODCARGO_CRATES +=      byte-tools      0.3.1   # MIT OR Apache-2.0
MODCARGO_CRATES +=      byteorder       1.3.2   # Unlicense OR MIT
MODCARGO_CRATES +=      bytes   0.4.12  # MIT
MODCARGO_CRATES +=      c2-chacha       0.2.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      cc      1.0.47  # MIT/Apache-2.0
MODCARGO_CRATES +=      cfg-if  0.1.10  # MIT/Apache-2.0
MODCARGO_CRATES +=      chrono  0.4.9   # MIT/Apache-2.0
MODCARGO_CRATES +=      clap    2.33.0  # MIT
MODCARGO_CRATES +=      cloudabi        0.0.3   # BSD-2-Clause
MODCARGO_CRATES +=      ctor    0.1.12  # Apache-2.0 OR MIT
MODCARGO_CRATES +=      darling 0.8.6   # MIT
MODCARGO_CRATES +=      darling_core    0.8.6   # MIT
MODCARGO_CRATES +=      darling_macro   0.8.6   # MIT
MODCARGO_CRATES +=      difference      2.0.0   # MIT
MODCARGO_CRATES +=      digest  0.8.1   # MIT OR Apache-2.0
MODCARGO_CRATES +=      either  1.5.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      elasticlunr-rs  2.3.6   # MIT/Apache-2.0
MODCARGO_CRATES +=      env_logger      0.6.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      error-chain     0.12.1  # MIT/Apache-2.0
MODCARGO_CRATES +=      failure 0.1.6   # MIT OR Apache-2.0
MODCARGO_CRATES +=      failure_derive  0.1.6   # MIT OR Apache-2.0
MODCARGO_CRATES +=      fake-simd       0.1.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      filetime        0.2.8   # MIT/Apache-2.0
MODCARGO_CRATES +=      fnv     1.0.6   # Apache-2.0 / MIT
MODCARGO_CRATES +=      fsevent 0.4.0   # MIT
MODCARGO_CRATES +=      fsevent-sys     2.0.1   # MIT
MODCARGO_CRATES +=      fuchsia-cprng   0.1.1   # LICENSE
MODCARGO_CRATES +=      fuchsia-zircon  0.3.3   # BSD-3-Clause
MODCARGO_CRATES +=      fuchsia-zircon-sys      0.3.3   # BSD-3-Clause
MODCARGO_CRATES +=      futf    0.1.4   # MIT / Apache-2.0
MODCARGO_CRATES +=      generic-array   0.12.3  # MIT
MODCARGO_CRATES +=      getopts 0.2.21  # MIT/Apache-2.0
MODCARGO_CRATES +=      getrandom       0.1.13  # MIT OR Apache-2.0
MODCARGO_CRATES +=      gitignore       1.0.6   # MIT OR Apache-2.0
MODCARGO_CRATES +=      glob    0.2.11  # MIT/Apache-2.0
MODCARGO_CRATES +=      handlebars      2.0.2   # MIT
MODCARGO_CRATES +=      hashbrown       0.5.0   # Apache-2.0/MIT
MODCARGO_CRATES +=      heck    0.3.1   # MIT OR Apache-2.0
MODCARGO_CRATES +=      hermit-abi      0.1.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      html5ever       0.23.0  # MIT / Apache-2.0
MODCARGO_CRATES +=      html5ever       0.24.1  # MIT / Apache-2.0
MODCARGO_CRATES +=      httparse        1.3.4   # MIT/Apache-2.0
MODCARGO_CRATES +=      humantime       1.3.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      hyper   0.10.16 # MIT
MODCARGO_CRATES +=      ident_case      1.0.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      idna    0.1.5   # MIT/Apache-2.0
MODCARGO_CRATES +=      idna    0.2.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      inotify 0.6.1   # ISC
MODCARGO_CRATES +=      inotify-sys     0.1.3   # ISC
MODCARGO_CRATES +=      iovec   0.1.4   # MIT/Apache-2.0
MODCARGO_CRATES +=      iron    0.6.1   # MIT
MODCARGO_CRATES +=      is-match        0.1.0   # MPL-2.0
MODCARGO_CRATES +=      itertools       0.8.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      itoa    0.4.4   # MIT/Apache-2.0
MODCARGO_CRATES +=      kernel32-sys    0.2.2   # MIT
MODCARGO_CRATES +=      language-tags   0.2.2   # MIT
MODCARGO_CRATES +=      lazy_static     1.4.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      lazycell        1.2.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      libc    0.2.65  # MIT OR Apache-2.0
MODCARGO_CRATES +=      log     0.3.9   # MIT/Apache-2.0
MODCARGO_CRATES +=      log     0.4.8   # MIT OR Apache-2.0
MODCARGO_CRATES +=      mac     0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      maplit  1.0.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      markup5ever     0.8.1   # MIT / Apache-2.0
MODCARGO_CRATES +=      markup5ever     0.9.0   # MIT / Apache-2.0
MODCARGO_CRATES +=      matches 0.1.8   # MIT
MODCARGO_CRATES +=      maybe-uninit    2.0.0   # Apache-2.0 OR MIT
MODCARGO_CRATES +=      memchr  2.2.1   # Unlicense/MIT
MODCARGO_CRATES +=      mime    0.2.6   # MIT
MODCARGO_CRATES +=      mime_guess      1.8.7   # MIT
MODCARGO_CRATES +=      mio     0.6.19  # MIT
MODCARGO_CRATES +=      mio-extras      2.0.5   # MIT
MODCARGO_CRATES +=      miow    0.2.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      modifier        0.1.0   # MIT
MODCARGO_CRATES +=      mount   0.4.0   # MIT
MODCARGO_CRATES +=      net2    0.2.33  # MIT/Apache-2.0
MODCARGO_CRATES +=      new_debug_unreachable   1.0.3   # MIT
MODCARGO_CRATES +=      notify  4.0.14  # CC0-1.0
MODCARGO_CRATES +=      num-integer     0.1.41  # MIT/Apache-2.0
MODCARGO_CRATES +=      num-traits      0.2.8   # MIT/Apache-2.0
MODCARGO_CRATES +=      num_cpus        1.11.0  # MIT/Apache-2.0
MODCARGO_CRATES +=      opaque-debug    0.2.3   # MIT OR Apache-2.0
MODCARGO_CRATES +=      open    1.3.2   # MIT
MODCARGO_CRATES +=      output_vt100    0.1.2   # MIT
MODCARGO_CRATES +=      percent-encoding        1.0.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      percent-encoding        2.1.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      pest    2.1.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      pest_derive     2.1.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      pest_generator  2.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      pest_meta       2.1.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      phf     0.7.24  # MIT
MODCARGO_CRATES +=      phf_codegen     0.7.24  # MIT
MODCARGO_CRATES +=      phf_generator   0.7.24  # MIT
MODCARGO_CRATES +=      phf_shared      0.7.24  # MIT
MODCARGO_CRATES +=      plugin  0.2.6   # MIT
MODCARGO_CRATES +=      ppv-lite86      0.2.6   # MIT/Apache-2.0
MODCARGO_CRATES +=      precomputed-hash        0.1.1   # MIT
MODCARGO_CRATES +=      pretty_assertions       0.6.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      proc-macro2     0.4.30  # MIT/Apache-2.0
MODCARGO_CRATES +=      proc-macro2     1.0.6   # MIT OR Apache-2.0
MODCARGO_CRATES +=      pulldown-cmark  0.6.1   # MIT
MODCARGO_CRATES +=      quick-error     1.2.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      quote   0.6.13  # MIT OR Apache-2.0
MODCARGO_CRATES +=      quote   1.0.2   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand    0.6.5   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand    0.7.2   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand_chacha     0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_chacha     0.2.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_core       0.3.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_core       0.4.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_core       0.5.1   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand_hc 0.1.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_hc 0.2.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_isaac      0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_jitter     0.1.4   # MIT OR Apache-2.0
MODCARGO_CRATES +=      rand_os 0.1.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_pcg        0.1.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      rand_xorshift   0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      rdrand  0.4.0   # ISC
MODCARGO_CRATES +=      redox_syscall   0.1.56  # MIT
MODCARGO_CRATES +=      regex   1.3.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      regex-syntax    0.6.12  # MIT/Apache-2.0
MODCARGO_CRATES +=      remove_dir_all  0.5.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      rustc-demangle  0.1.16  # MIT/Apache-2.0
MODCARGO_CRATES +=      ryu     1.0.2   # Apache-2.0 OR BSL-1.0
MODCARGO_CRATES +=      safemem 0.3.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      same-file       1.0.5   # Unlicense/MIT
MODCARGO_CRATES +=      select  0.4.3   # MIT
MODCARGO_CRATES +=      sequence_trie   0.3.6   # MIT/Apache-2.0
MODCARGO_CRATES +=      serde   1.0.102 # MIT OR Apache-2.0
MODCARGO_CRATES +=      serde_derive    1.0.102 # MIT OR Apache-2.0
MODCARGO_CRATES +=      serde_json      1.0.41  # MIT OR Apache-2.0
MODCARGO_CRATES +=      sha-1   0.8.1   # MIT OR Apache-2.0
MODCARGO_CRATES +=      shlex   0.1.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      siphasher       0.2.3   # MIT/Apache-2.0
MODCARGO_CRATES +=      slab    0.4.2   # MIT
MODCARGO_CRATES +=      smallvec        0.6.13  # MIT/Apache-2.0
MODCARGO_CRATES +=      staticfile      0.5.0   # MIT
MODCARGO_CRATES +=      string_cache    0.7.5   # MIT / Apache-2.0
MODCARGO_CRATES +=      string_cache_codegen    0.4.4   # MIT / Apache-2.0
MODCARGO_CRATES +=      string_cache_shared     0.3.0   # MIT / Apache-2.0
MODCARGO_CRATES +=      strsim  0.8.0   # MIT
MODCARGO_CRATES +=      strum   0.15.0  # MIT
MODCARGO_CRATES +=      strum_macros    0.15.0  # MIT
MODCARGO_CRATES +=      syn     0.15.44 # MIT OR Apache-2.0
MODCARGO_CRATES +=      syn     1.0.8   # MIT OR Apache-2.0
MODCARGO_CRATES +=      synstructure    0.12.3  # MIT
MODCARGO_CRATES +=      tempfile        3.1.0   # MIT OR Apache-2.0
MODCARGO_CRATES +=      tendril 0.4.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      termcolor       1.0.5   # Unlicense OR MIT
MODCARGO_CRATES +=      textwrap        0.11.0  # MIT
MODCARGO_CRATES +=      thread_local    0.3.6   # Apache-2.0/MIT
MODCARGO_CRATES +=      time    0.1.42  # MIT/Apache-2.0
MODCARGO_CRATES +=      toml    0.5.5   # MIT/Apache-2.0
MODCARGO_CRATES +=      toml-query      0.9.2   # MPL-2.0
MODCARGO_CRATES +=      toml-query_derive       0.9.0   # MPL-2.0
MODCARGO_CRATES +=      traitobject     0.1.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      typeable        0.1.2   # MIT
MODCARGO_CRATES +=      typemap 0.3.3   # MIT
MODCARGO_CRATES +=      typenum 1.11.2  # MIT/Apache-2.0
MODCARGO_CRATES +=      ucd-trie        0.1.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicase 1.4.2   # MIT
MODCARGO_CRATES +=      unicase 2.5.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-bidi    0.3.4   # MIT / Apache-2.0
MODCARGO_CRATES +=      unicode-normalization   0.1.9   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-segmentation    1.6.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-width   0.1.6   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-xid     0.1.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      unicode-xid     0.2.0   # MIT OR Apache-2.0
MODCARGO_CRATES +=      unsafe-any      0.4.2   # MIT
MODCARGO_CRATES +=      url     1.7.2   # MIT/Apache-2.0
MODCARGO_CRATES +=      url     2.1.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      utf-8   0.7.5   # MIT OR Apache-2.0
MODCARGO_CRATES +=      vec_map 0.8.1   # MIT/Apache-2.0
MODCARGO_CRATES +=      version_check   0.1.5   # MIT/Apache-2.0
MODCARGO_CRATES +=      walkdir 2.2.9   # Unlicense/MIT
MODCARGO_CRATES +=      wasi    0.7.0   # Apache-2.0 WITH LLVM-exception OR Apache-2.0 OR MIT
MODCARGO_CRATES +=      winapi  0.2.8   # MIT
MODCARGO_CRATES +=      winapi  0.3.8   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi-build    0.1.1   # MIT
MODCARGO_CRATES +=      winapi-i686-pc-windows-gnu      0.4.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      winapi-util     0.1.2   # Unlicense/MIT
MODCARGO_CRATES +=      winapi-x86_64-pc-windows-gnu    0.4.0   # MIT/Apache-2.0
MODCARGO_CRATES +=      wincolor        1.0.2   # Unlicense OR MIT
MODCARGO_CRATES +=      ws      0.9.1   # MIT
MODCARGO_CRATES +=      ws2_32-sys      0.2.1   # MIT

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MODCARGO_RUSTFLAGS =	-C debuginfo=0

RELEASE_DIR =		${MODCARGO_TARGET_DIR}/release

# Build the docs.
pre-fake:
	cd ${WRKSRC}/book-example && ${RELEASE_DIR}/mdbook build

do-install:
	${INSTALL_PROGRAM} ${RELEASE_DIR}/mdbook ${PREFIX}/bin/
	cp -r ${WRKSRC}/book-example/book/ ${PREFIX}/share/doc/mdbook/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/mdbook/

.include <bsd.port.mk>
