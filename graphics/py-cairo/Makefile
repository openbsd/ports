# $OpenBSD: Makefile,v 1.23 2010/10/24 21:21:01 ajacoutot Exp $

COMMENT=	cairo bindings for Python

VERSION=	1.8.10
DISTNAME=	py2cairo-${VERSION}
PKGNAME=	py-cairo-${VERSION}
CATEGORIES=	graphics

HOMEPAGE=	http://cairographics.org/pycairo/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://cairographics.org/releases/

WANTLIB=	GL X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm \
		cairo drm expat fontconfig freetype glib-2.0 gobject-2.0 \
		gthread-2.0 m pcre pixman-1 png pthread-stubs \
		xcb xcb-render xcb-shm z

WRKDIST=	${WRKDIR}/pycairo-${VERSION}

MODULES=	lang/python	\
		devel/gettext

LIB_DEPENDS=	::graphics/cairo
REGRESS_DEPENDS=::devel/py-py

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu

do-regress: install
	perl -i -pe "s/python/python${MODPY_VERSION}/g" ${WRKSRC}/test/examples_test.py
	cd ${WRKSRC}/test && py.test

.include <bsd.port.mk>
