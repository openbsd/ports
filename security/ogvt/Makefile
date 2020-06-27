# $OpenBSD: Makefile,v 1.4 2020/06/27 13:43:07 abieber Exp $

COMMENT =		simple tool for verifying gpg signatures

MODGO_MODNAME =		suah.dev/ogvt
MODGO_VERSION =		v1.0.5

DISTNAME =		 ogvt-${MODGO_VERSION}

CATEGORIES =		security

HOMEPAGE =		https://git.sr.ht/~qbit/ogvt

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c pthread

MODULES =	lang/go

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/${MODGO_BINDIR} && \
		${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/* \
			 ${PREFIX}/${MODGO_BINDIR};
	${INSTALL_MAN} ${WRKSRC}/ogvt.1 ${PREFIX}/man/man1/

MODGO_MODULES =	\
	golang.org/x/crypto	 v0.0.0-20200204104054-c9f3fb736b72 \
	golang.org/x/net	 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/sys	 v0.0.0-20200501145240-bc7a7d42d5c3 \
	golang.org/x/text	 v0.3.0 \
	suah.dev/protect	 v1.0.0
MODGO_MODFILES =	\
	golang.org/x/crypto	 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/sys	 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys	 v0.0.0-20190412213103-97732733099d

.include <bsd.port.mk>
