# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:11 sthen Exp $

COMMENT=	Go TrueType fonts
GH_ACCOUNT=	golang
GH_PROJECT=	image
GH_COMMIT=	ce0faa1867f5944a366e0174e7197b82089e9fa8
DISTNAME=	go-image-20170401
PKGNAME=	${DISTNAME:S/image/fonts/}
HOMEPAGE=	https://blog.golang.org/go-fonts

CATEGORIES=	fonts x11

# BSD
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH=	*

FONTDIR=	${PREFIX}/share/fonts/go
DOCDIR=		${PREFIX}/share/doc/go-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/font/gofont/ttfs/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/font/gofont/ttfs/README ${DOCDIR}

.include <bsd.port.mk>
