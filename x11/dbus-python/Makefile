# $OpenBSD: Makefile,v 1.13 2010/08/30 21:47:46 sthen Exp $

COMMENT=	dbus bindings for Python

DISTNAME=	dbus-python-0.83.0
REVISION=	4

CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}releases/dbus-python/

HOMEPAGE=	http://dbus.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC-like
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB+=	glib-2.0 gobject-2.0 pcre dbus-1 dbus-glib-1

MODULES=	lang/python \
		devel/gettext

LIB_DEPENDS+=	::x11/dbus \
		::x11/dbus-glib

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-html-docs

NO_REGRESS=	Yes

.include <bsd.port.mk>
