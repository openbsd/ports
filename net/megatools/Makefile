# $OpenBSD: Makefile,v 1.8 2016/11/04 11:35:19 sthen Exp $

COMMENT =		command line client application for Mega

DISTNAME =		megatools-1.9.97
REVISION =		0

SHARED_LIBS +=  mega                      1.0 # 0.0

CATEGORIES =		net

HOMEPAGE =		http://megatools.megous.com/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl ffi fuse gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 nghttp2 pcre pthread ssl z

MASTER_SITES =		http://megatools.megous.com/builds/

MODULES =		devel/gettext
BUILD_DEPENDS =		devel/gobject-introspection
LIB_DEPENDS =		devel/glib2 \
			net/curl
RUN_DEPENDS =		net/glib2-networking

USE_GMAKE =		Yes
# DocBook-generated bulleted lists
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--disable-introspection

.include <bsd.port.mk>
