# $OpenBSD: Makefile,v 1.1.1.1 2020/09/06 13:58:07 abieber Exp $

COMMENT =	non-web browser

MODGO_MODNAME =	tildegit.org/sloum/bombadillo
MODGO_VERSION =	v0.0.0-20200530165248-abc6a170dcca

DISTNAME =	bombadillo-${MODGO_VERSION}
PKGNAME =	bombadillo-2.3.1.20200530

CATEGORIES =	net

HOMEPAGE =	https://bombadillo.colorfield.space/

# GPLv3
PERMIT_PACKAGE =	yes

WANTLIB += c pthread

MODULES =		lang/go

post-install:
	${INSTALL_MAN} ${WRKSRC}/bombadillo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
