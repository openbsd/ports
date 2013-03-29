# $OpenBSD: Makefile,v 1.1.1.1 2013/03/29 13:16:17 jasper Exp $

COMMENT=	client library for the Accounts & SSO accounts database

V=		1.1
BZR=		bzr153
DISTNAME=	libaccounts-glib-${V}+${BZR}
PKGNAME=	libaccounts-glib-$V

SHARED_LIBS +=	accounts-glib        0.0      # 1.3

CATEGORIES=	net

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=	http://code.google.com/p/accounts-sso/

# GPLv3
PERMIT_PACKAGE_CDROM=Yes

MASTER_SITES=	https://launchpad.net/libaccounts-glib/trunk/${V}+${BZR}/+download/

MODULES=	devel/gettext \
		lang/python

WANTLIB += c check dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 m pcre pthread sqlite3 xml2 z ffi

BUILD_DEPENDS=	devel/gobject-introspection \
		devel/py-gobject3
RUN_DEPENDS=	devel/py-gobject3
LIB_DEPENDS=	devel/check \
		textproc/libxml \
		x11/dbus-glib

USE_GMAKE=Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-introspection

FAKE_FLAGS=	libaccountsdocdir="${PREFIX}" \
		libaccountsdoc_DATA=

TEST_IS_INTERACTIVE=x11

WRKDIST=	${WRKDIR}/libaccounts-glib-$V

.include <bsd.port.mk>
