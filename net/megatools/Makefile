# $OpenBSD: Makefile,v 1.17 2018/12/19 08:21:44 rsadowski Exp $

PORTROACH =		limit:[0-9]\.tar\.gz

COMMENT =		command line client application for Mega

DISTNAME =		megatools-1.10.2
REVISION =		1

CATEGORIES =		net

HOMEPAGE =		https://megatools.megous.com/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c crypto curl gio-2.0 glib-2.0 gobject-2.0 intl pthread
WANTLIB += ssl

MASTER_SITES =		https://megatools.megous.com/builds/

BUILD_DEPENDS =		devel/gobject-introspection \
			textproc/asciidoc
LIB_DEPENDS =		devel/glib2 \
			net/curl

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
MAKE_FLAGS =		VERBOSE=1

CONFIGURE_ARGS =	--disable-introspection

CFLAGS +=		-std=c99

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
