# $OpenBSD: Makefile,v 1.39 2015/07/26 12:32:37 ajacoutot Exp $

COMMENT=		video DVDs and CDs creation tool

MODPY_EGG_VERSION=	${GH_TAGNAME}
DISTNAME=		devede-${MODPY_EGG_VERSION}

GH_TAGNAME=		4.0
GH_ACCOUNT=		rastersoft
GH_PROJECT=		devedeng

CATEGORIES=		multimedia x11

HOMEPAGE=		http://www.rastersoft.com/programas/devede.html

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_ADJ_FILES=	src/devede_ng.py
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		devel/gettext-tools

# needed because NO_BUILD is set below
BUILD_DEPENDS +=	${_MODPY_BUILD_DEPENDS}

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR}

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=		x11/gtk+3

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py \
		${WRKSRC}/src/devedeng/configuration_data.py

post-install:
	rmdir ${PREFIX}/share/doc/devede_ng/html
	rmdir ${PREFIX}/share/doc/devede_ng
	cd ${PREFIX}/bin && ln -s devede_ng.py devede

.include <bsd.port.mk>
