# $OpenBSD: Makefile,v 1.3 2020/03/17 01:59:17 abieber Exp $

COMMENT =		simple tool for verifying gpg signatures
VERSION =		v1.0.3
DISTNAME =		ogvt-${VERSION}
PKGNAME =		${DISTNAME:S/-v/-/g}

CATEGORIES =		security

HOMEPAGE =		https://git.sr.ht/~qbit/ogvt

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://deftly.net/dist/

# uses pledge()
WANTLIB += c pthread

MODULES =	lang/go

ALL_TARGET =	git.sr.ht/~qbit/ogvt

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/${MODGO_BINDIR} && \
		${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/* \
			 ${PREFIX}/${MODGO_BINDIR};
	${INSTALL_MAN} ${WRKSRC}/ogvt.1 ${PREFIX}/man/man1/


.include <bsd.port.mk>
