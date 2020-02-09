# $OpenBSD: Makefile,v 1.2 2020/02/09 18:01:05 abieber Exp $

COMMENT =		simple tool for verifying gpg signatures
VERSION =		v1.0.1
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
