# $OpenBSD: Makefile,v 1.6 2021/03/08 13:59:26 sthen Exp $

COMMENT =		simple tool for verifying gpg signatures

MODGO_MODNAME =		suah.dev/ogvt
MODGO_VERSION =		v1.0.9

DISTNAME =		 ogvt-${MODGO_VERSION}
REVISION =               0

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
	golang.org/x/crypto	 v0.0.0-20201221181555-eec23a3978ad \
	golang.org/x/net	 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/sys	 v0.0.0-20210113181707-4bcb84eeeb78 \
	golang.org/x/term	 v0.0.0-20201117132131-f5c789dd3221 \
	golang.org/x/text	 v0.3.0 \
	suah.dev/protect	 v1.0.0

MODGO_MODFILES =	\
	golang.org/x/crypto	 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/sys	 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys	 v0.0.0-20191026070338-33540a1f6037 \
	golang.org/x/sys	 v0.0.0-20200501145240-bc7a7d42d5c3

.include <bsd.port.mk>
