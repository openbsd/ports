# $OpenBSD: Makefile,v 1.10 2015/05/23 10:53:24 czarkoff Exp $

COMMENT=		jukebox frontend to mpd

MODPY_EGG_VERSION=	0.7.1
DISTNAME=		fookebox-${MODPY_EGG_VERSION}
REVISION=		1
GH_TAGNAME=		${MODPY_EGG_VERSION}
GH_ACCOUNT=		cockroach
GH_PROJECT=		fookebox
CATEGORIES=		audio www

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
SUBST_VARS+=		MODPY_SITEPKG

BUILD_DEPENDS=		www/py-paste-script
RUN_DEPENDS=		audio/py-mpd \
			databases/py-sqlalchemy \
			www/py-formencode>=1.2.4 \
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
