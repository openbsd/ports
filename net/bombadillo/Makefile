COMMENT =	non-web browser

MODGO_MODNAME =	tildegit.org/sloum/bombadillo
MODGO_VERSION =	v0.0.0-20201120043812-757305db6692

DISTNAME =	bombadillo-${MODGO_VERSION}
PKGNAME =	bombadillo-2.3.3.20201120
REVISION =	0

CATEGORIES =	net

HOMEPAGE =	https://bombadillo.colorfield.space/

# GPLv3
PERMIT_PACKAGE =	yes

WANTLIB += c pthread

MODULES =		lang/go

post-install:
	${INSTALL_MAN} ${WRKSRC}/bombadillo.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
