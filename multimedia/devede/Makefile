# $OpenBSD: Makefile,v 1.49 2019/07/12 20:47:55 sthen Exp $

COMMENT=		video DVDs and CDs creation tool

MODPY_EGG_VERSION=	${GH_TAGNAME}
DISTNAME=		devede-${MODPY_EGG_VERSION}
REVISION=		1

GH_TAGNAME=		4.8.9
GH_ACCOUNT=		rastersoft
GH_PROJECT=		devedeng

CATEGORIES=		multimedia x11

HOMEPAGE=		http://www.rastersoft.com/programas/devede.html

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_ADJ_FILES=	src/devede_ng.py
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		devel/gettext,-tools

# needed because NO_BUILD is set below
BUILD_DEPENDS +=	${_MODPY_BUILD_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR}

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

NO_BUILD=		Yes
NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py \
		${WRKSRC}/src/devedeng/configuration_data.py

post-install:
	cd ${PREFIX}/bin && ln -s devede_ng.py devede

.include <bsd.port.mk>
