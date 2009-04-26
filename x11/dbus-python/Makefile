# $OpenBSD: Makefile,v 1.9 2009/04/26 11:01:05 ajacoutot Exp $

COMMENT=	dbus bindings for Python

DISTNAME=	dbus-python-0.83.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}releases/dbus-python/

HOMEPAGE=	http://dbus.freedesktop.org/

# ISC-like
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB+=	glib-2.0 gobject-2.0 pcre

MODULES=	lang/python \
		devel/gettext

LIB_DEPENDS+=	dbus-1.>=5::x11/dbus \
		dbus-glib-1::x11/dbus-glib

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-html-docs

NO_REGRESS=	Yes

.include <bsd.port.mk>
