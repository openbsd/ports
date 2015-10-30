# $OpenBSD: Makefile,v 1.4 2015/10/30 12:47:40 sthen Exp $

COMMENT =		command line client application for Mega

DISTNAME =		megatools-1.9.95
REVISION =		1

SHARED_LIBS +=  mega                      0.0 # 0.0

CATEGORIES =		net

HOMEPAGE =		http://megatools.megous.com/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl ffi fuse gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 idn nghttp2 pcre pthread ssl z

MASTER_SITES =		http://megatools.megous.com/builds/

MODULES =		devel/gettext
LIB_DEPENDS =		devel/glib2 \
			net/curl
RUN_DEPENDS =		net/glib2-networking

USE_GMAKE =		Yes
# DocBook-generated bulleted lists
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
