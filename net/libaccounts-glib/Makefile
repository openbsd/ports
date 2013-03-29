# $OpenBSD: Makefile,v 1.2 2013/03/29 13:42:59 jasper Exp $

COMMENT=	client library for the Accounts & SSO accounts database

DISTNAME=	libaccounts-glib-1.8

SHARED_LIBS +=	accounts-glib        0.0      # 1.3

CATEGORIES=	net

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=	https://accounts-sso.googlecode.com/

# GPLv3
PERMIT_PACKAGE_CDROM=Yes

MASTER_SITES=	${HOMEPAGE}/files/

MODULES=	devel/gettext \
		lang/python

WANTLIB += c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre pthread
WANTLIB += sqlite3 xml2 z ffi

BUILD_DEPENDS=	devel/gobject-introspection \
		devel/py-gobject3 \
		lang/vala \
		textproc/docbook-xsl
RUN_DEPENDS=	devel/py-gobject3
LIB_DEPENDS=	textproc/libxml
TEST_DEPENDS=	devel/check

USE_GMAKE=Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-introspection

TEST_IS_INTERACTIVE=x11

.include <bsd.port.mk>
