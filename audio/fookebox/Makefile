# $OpenBSD: Makefile,v 1.15 2019/07/12 20:43:33 sthen Exp $

COMMENT=		jukebox frontend to mpd

MODPY_EGG_VERSION=	0.7.3
GH_TAGNAME=		fookebox-${MODPY_EGG_VERSION}
GH_ACCOUNT=		cockroach
GH_PROJECT=		fookebox
PKGNAME=		fookebox-${MODPY_EGG_VERSION}
CATEGORIES=		audio www
REVISION=		0

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
SUBST_VARS+=		MODPY_SITEPKG

BUILD_DEPENDS=		www/py-paste-script
RUN_DEPENDS=		audio/py-mpd \
			www/py-paste-script \
			www/py-pylons>0.9.7 \
			www/py-routes>=1.12.3

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/fookebox/
	${SUBST_CMD} ${WRKSRC}/docs/examples/apache/fookebox.wsgi
	rm ${WRKSRC}/docs/examples/apache/fookebox.wsgi.*
	${INSTALL_DATA} ${WRKSRC}/docs/examples/apache/* \
		${PREFIX}/share/examples/fookebox/
	${INSTALL_DATA} ${FILESDIR}/config.ini ${PREFIX}/share/examples/fookebox/
	${INSTALL_DATA} ${WRKSRC}/docs/config.txt ${PREFIX}/share/doc/fookebox/

.include <bsd.port.mk>
