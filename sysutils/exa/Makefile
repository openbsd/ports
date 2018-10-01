# $OpenBSD: Makefile,v 1.2 2018/10/01 08:14:46 sthen Exp $

COMMENT =		ls alternative written in Rust

GH_ACCOUNT =		ogham
GH_PROJECT =		exa
GH_TAGNAME =		v0.8.0
REVISION =		0

CATEGORIES =		sysutils

# Unlicense/MIT
PERMIT_PACKAGE_CDROM =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo
BUILD_DEPENDS =		lang/rust

MODCARGO_CRATES +=	aho-corasick-0.5.3	# Unlicense/MIT
MODCARGO_CRATES +=	ansi_term-0.8.0	# MIT
MODCARGO_CRATES +=	bitflags-0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	bitflags-0.9.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	byteorder-0.4.2	# Unlicense/MIT
MODCARGO_CRATES +=	cmake-0.1.25	# MIT/Apache-2.0
MODCARGO_CRATES +=	conv-0.3.3	# MIT
MODCARGO_CRATES +=	custom_derive-0.1.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	datetime-0.4.5	# MIT
MODCARGO_CRATES +=	env_logger-0.3.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	gcc-0.3.53	# MIT/Apache-2.0
MODCARGO_CRATES +=	getopts-0.2.14	# MIT/Apache-2.0
MODCARGO_CRATES +=	git2-0.6.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	glob-0.2.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	idna-0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	iso8601-0.1.1	# MIT
MODCARGO_CRATES +=	kernel32-sys-0.2.2	# MIT
MODCARGO_CRATES +=	lazy_static-0.2.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	libc-0.2.43	# MIT/Apache-2.0
MODCARGO_CRATES +=	libgit2-sys-0.6.14	# MIT/Apache-2.0
MODCARGO_CRATES +=	libz-sys-1.0.16	# MIT/Apache-2.0
MODCARGO_CRATES +=	locale-0.2.2	# MIT
MODCARGO_CRATES +=	log-0.3.8	# MIT/Apache-2.0
MODCARGO_CRATES +=	magenta-0.1.1	# BSD-3-Clause
MODCARGO_CRATES +=	magenta-sys-0.1.1	# BSD-3-Clause
MODCARGO_CRATES +=	matches-0.1.6	# MIT
MODCARGO_CRATES +=	memchr-0.1.11	# Unlicense/MIT
MODCARGO_CRATES +=	natord-1.0.9	# MIT
MODCARGO_CRATES +=	nom-1.2.4	# MIT
MODCARGO_CRATES +=	num-0.1.40	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-bigint-0.1.40	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-complex-0.1.40	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-integer-0.1.35	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-iter-0.1.34	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-rational-0.1.39	# MIT/Apache-2.0
MODCARGO_CRATES +=	num-traits-0.1.40	# MIT/Apache-2.0
MODCARGO_CRATES +=	num_cpus-1.6.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	number_prefix-0.2.7	# MIT
MODCARGO_CRATES +=	pad-0.1.4	# MIT
MODCARGO_CRATES +=	percent-encoding-1.0.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	pkg-config-0.3.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	rand-0.3.16	# MIT/Apache-2.0
MODCARGO_CRATES +=	redox_syscall-0.1.31	# MIT
MODCARGO_CRATES +=	regex-0.1.80	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-syntax-0.3.9	# MIT/Apache-2.0
MODCARGO_CRATES +=	rustc-serialize-0.3.24	# MIT/Apache-2.0
MODCARGO_CRATES +=	scoped_threadpool-0.1.7	# MIT
MODCARGO_CRATES +=	term_grid-0.1.6	# MIT
MODCARGO_CRATES +=	term_size-0.3.0	# MIT OR Apache-2.0
MODCARGO_CRATES +=	thread-id-2.0.0	# Apache-2.0
MODCARGO_CRATES +=	thread_local-0.2.7	# Apache-2.0/MIT
MODCARGO_CRATES +=	unicode-bidi-0.3.4	# MIT / Apache-2.0
MODCARGO_CRATES +=	unicode-normalization-0.1.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-width-0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	url-1.5.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	users-0.5.3	# MIT
MODCARGO_CRATES +=	utf8-ranges-0.1.3	# Unlicense/MIT
MODCARGO_CRATES +=	vcpkg-0.2.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-0.2.8	# MIT
MODCARGO_CRATES +=	winapi-build-0.1.1	# MIT
MODCARGO_CRATES +=	zoneinfo_compiled-0.4.5	# MIT

MODCARGO_CRATES_UPDATE +=	libc

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MAKE_ENV +=		LIBGIT2_SYS_USE_PKG_CONFIG=1

LIB_DEPENDS +=		devel/libgit2/libgit2
WANTLIB +=		c c++abi pthread git2

MODCARGO_FEATURES =	git

# test result: FAILED. 368 passed; 16 failed; 4 ignored; 0 measured; 0 filtered out
#NO_TEST =	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/contrib/man/exa.1 ${PREFIX}/man/man1/exa.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKSRC}/contrib/completions.fish ${PREFIX}/share/fish/completions/exa.fish
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/vendor-completions/
	${INSTALL_DATA} ${WRKSRC}/contrib/completions.zsh ${PREFIX}/share/zsh/vendor-completions/_exa
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/contrib/completions.bash ${PREFIX}/share/bash-completion/completions/exa

.include <bsd.port.mk>
