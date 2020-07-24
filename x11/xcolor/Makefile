# $OpenBSD: Makefile,v 1.1.1.1 2020/07/24 17:22:50 bcallah Exp $

COMMENT =	lightweight color picker

GH_ACCOUNT =	Soft
GH_PROJECT =	xcolor
GH_TAGNAME =	0.4.0

CATEGORIES =	x11

HOMEPAGE =	https://soft.github.io/xcolor/

MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi m pthread xcb xcb-shape

MODULES =		devel/cargo

DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODCARGO_CRATES +=	ansi_term	0.11.0	# MIT
MODCARGO_CRATES +=	atty	0.2.8	# MIT
MODCARGO_CRATES +=	backtrace	0.3.5	# MIT/Apache-2.0
MODCARGO_CRATES +=	backtrace-sys	0.1.16	# MIT/Apache-2.0
MODCARGO_CRATES +=	bitflags	1.0.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	byteorder	1.2.1	# Unlicense/MIT
MODCARGO_CRATES +=	bytes	0.4.6	# MIT/Apache-2.0
MODCARGO_CRATES +=	cc	1.0.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	cfg-if	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	clap	2.31.2	# MIT
MODCARGO_CRATES +=	failure	0.1.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	failure_derive	0.1.1	# MIT OR Apache-2.0
MODCARGO_CRATES +=	gcc	0.3.54	# MIT/Apache-2.0
MODCARGO_CRATES +=	iovec	0.1.2	# MIT/Apache-2.0
MODCARGO_CRATES +=	lazy_static	1.0.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	libc	0.2.39	# MIT/Apache-2.0
MODCARGO_CRATES +=	log	0.4.1	# MIT/Apache-2.0
MODCARGO_CRATES +=	memchr	1.0.2	# Unlicense/MIT
MODCARGO_CRATES +=	nix	0.10.0	# MIT
MODCARGO_CRATES +=	nom	3.2.1	# MIT
MODCARGO_CRATES +=	quote	0.3.15	# MIT/Apache-2.0
MODCARGO_CRATES +=	redox_syscall	0.1.37	# MIT
MODCARGO_CRATES +=	redox_termios	0.1.1	# MIT
MODCARGO_CRATES +=	rustc-demangle	0.1.7	# MIT/Apache-2.0
MODCARGO_CRATES +=	strsim	0.7.0	# MIT
MODCARGO_CRATES +=	syn	0.11.11	# MIT/Apache-2.0
MODCARGO_CRATES +=	synom	0.11.3	# MIT/Apache-2.0
MODCARGO_CRATES +=	synstructure	0.6.1	# MIT
MODCARGO_CRATES +=	termion	1.5.1	# MIT
MODCARGO_CRATES +=	textwrap	0.9.0	# MIT
MODCARGO_CRATES +=	unicode-width	0.1.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	unicode-xid	0.0.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	vec_map	0.8.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	void	1.0.2	# MIT
MODCARGO_CRATES +=	winapi	0.2.8	# MIT
MODCARGO_CRATES +=	winapi	0.3.4	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0	# MIT/Apache-2.0
MODCARGO_CRATES +=	xcb	0.8.2	# MIT

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MODCARGO_RUSTFLAGS =	-L${X11BASE}/lib

post-install:
	rm -f ${PREFIX}/.crates2.json
	${INSTALL_MAN} ${WRKSRC}/man/xcolor.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
