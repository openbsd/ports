# $OpenBSD: Makefile,v 1.11 2017/08/22 18:03:52 tj Exp $

COMMENT =		command line client application for Mega

DISTNAME =		megatools-1.9.98
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		http://megatools.megous.com/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl gio-2.0 glib-2.0 gobject-2.0 pthread ssl

MASTER_SITES =		https://megatools.megous.com/builds/

MODULES =		devel/gettext
BUILD_DEPENDS =		devel/gobject-introspection \
			textproc/asciidoc
LIB_DEPENDS =		devel/glib2 \
			net/curl
RUN_DEPENDS =		net/glib2-networking

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--disable-introspection

.include <bsd.port.mk>
