COMMENT=		video DVDs and CDs creation tool

MODPY_EGG_VERSION=	4.17.0
DISTNAME=		devedeng-${MODPY_EGG_VERSION}
PKGNAME=		devede-${MODPY_EGG_VERSION}
REVISION=		3

CATEGORIES=		multimedia x11

HOMEPAGE=		https://www.rastersoft.com/programas/devede.html

# GPLv3
PERMIT_PACKAGE=	Yes

SITES=	https://gitlab.com/rastersoft/devedeng/-/archive/${MODPY_EGG_VERSION}/

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		devel/gettext,-tools

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gtk+4,-guic

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py \
		${WRKSRC}/src/devedeng/configuration_data.py

post-install:
	cd ${PREFIX}/bin && ln -s devede_ng.py devede

.include <bsd.port.mk>
