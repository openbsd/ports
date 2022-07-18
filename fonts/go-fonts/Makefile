COMMENT=	Go TrueType fonts
GH_ACCOUNT=	golang
GH_PROJECT=	image
GH_COMMIT=	41969df76e82aeec85fa3821b1e24955ea993001
DISTNAME=	go-image-20220616
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
