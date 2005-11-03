# $OpenBSD: Makefile,v 1.1.1.1 2005/11/03 19:44:48 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"cairo bindings for Python"

DISTNAME=	pycairo-1.0.2
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	graphics

HOMEPAGE=	http://cairographics.org/introduction/

MAINTAINER=	Eric Faurot <eric.faurot@gmail.com>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://cairographics.org/releases/

WANTLIB=	freetype gobject-2.0.0.0 glib-2.0.0.0

MODULES=	lang/python \
		devel/gettext
LIB_DEPENDS=	cairo.4::graphics/cairo
RUN_DEPENDS=	:py-gtk2-*:x11/py-gtk2
BUILD_DEPENDS=	${RUN_DEPENDS} \
		:pkgconfig-*:devel/pkgconfig

NO_REGRESS=	Yes

pre-configure:
	cd ${WRKSRC} && \
		sed "s|@VERSION@|${V}|" cairo/__init__.py.in | \
		sed "s|@VERSION_INFO@|${V:S/./,/g}|" > cairo/__init__.py

.include <bsd.port.mk>
