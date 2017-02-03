# $OpenBSD: Makefile,v 1.1.1.1 2017/02/03 15:00:33 danj Exp $

COMMENT =		line oriented search tool using Rust's regex library

GH_ACCOUNT =		BurntSushi
GH_PROJECT =		ripgrep
GH_TAGNAME =		0.4.0

CATEGORIES =		textproc sysutils

# Unlicense/MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

SEPARATE_BUILD =	Yes

MODULES =		devel/cargo

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES += ${DISTNAME}${EXTRACT_SUFX}

MODCARGO_CRATES +=	aho-corasick-0.6.1	# Unlicense/MIT
MODCARGO_CRATES +=	ansi_term-0.9.0	# MIT
MODCARGO_CRATES +=	bitflags-0.7.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	bytecount-0.1.6	# Apache-2.0/MIT
MODCARGO_CRATES +=	clap-2.19.3	# MIT
MODCARGO_CRATES +=	crossbeam-0.2.10	# Apache-2.0/MIT
MODCARGO_CRATES +=	env_logger-0.3.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	fnv-1.0.5	# Apache-2.0 / MIT
MODCARGO_CRATES +=	fs2-0.3.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	kernel32-sys-0.2.2	# MIT
MODCARGO_CRATES +=	lazy_static-0.2.2	# MIT
MODCARGO_CRATES +=	libc-0.2.19	# MIT/Apache-2.0
MODCARGO_CRATES +=	log-0.3.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	memchr-1.0.1	# Unlicense/MIT
MODCARGO_CRATES +=	memmap-0.5.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	num_cpus-1.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	regex-syntax-0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	same-file-0.1.2	# Unlicense/MIT
MODCARGO_CRATES +=	simd-0.1.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	strsim-0.5.2	# MIT
MODCARGO_CRATES +=	term_size-0.2.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	thread-id-3.0.0	# Apache-2.0
MODCARGO_CRATES +=	thread_local-0.3.2	# Apache-2.0/MIT
MODCARGO_CRATES +=	unicode-segmentation-0.1.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-width-0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	unreachable-0.1.1	# MIT
MODCARGO_CRATES +=	utf8-ranges-1.0.0	# Unlicense/MIT
MODCARGO_CRATES +=	vec_map-0.6.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	void-1.0.2	# MIT
MODCARGO_CRATES +=	walkdir-1.0.7	# Unlicense/MIT
MODCARGO_CRATES +=	winapi-0.2.8	# MIT
MODCARGO_CRATES +=	winapi-build-0.1.1	# MIT

CONFIGURE_STYLE =	cargo

post-install:
	chmod a+rx ${PREFIX}/bin/rg
	${INSTALL_MAN} ${WRKSRC}/doc/rg.1 ${PREFIX}/man/man1/
	mkdir -p ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${MODCARGO_TARGET_DIR}/release/build/ripgrep-*/out/rg.bash-completion \
		${PREFIX}/share/bash-completion/completions/rg
	mkdir -p ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${MODCARGO_TARGET_DIR}/release/build/ripgrep-*/out/_rg.ps1 \
		${PREFIX}/share/zsh/site-functions/_rg

.include <bsd.port.mk>
