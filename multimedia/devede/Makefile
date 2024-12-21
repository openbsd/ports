COMMENT=		video DVDs and CDs creation tool

MODPY_DISTV=	4.17.0
DISTNAME=		devedeng-${MODPY_DISTV}
PKGNAME=		devede-${MODPY_DISTV}
REVISION=		5

CATEGORIES=		multimedia x11

HOMEPAGE=		https://www.rastersoft.com/programas/devede.html

# GPLv3
PERMIT_PACKAGE=	Yes

SITES=	https://gitlab.com/rastersoft/devedeng/-/archive/${MODPY_DISTV}/

MODULES=		lang/python
MODPY_PYBUILD=		setuptools

BUILD_DEPENDS=		devel/gettext,-tools

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3 \
			x11/gtk+4,-guic

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py \
		${WRKSRC}/src/devedeng/configuration_data.py

post-install:
	cd ${PREFIX}/bin && ln -s devede_ng.py devede
	cd ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/usr/local; \
		mv share/* ${PREFIX}/share/
	find ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/usr -type d -delete

.include <bsd.port.mk>
