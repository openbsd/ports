# $OpenBSD: Makefile,v 1.2 2012/05/08 07:11:48 jasper Exp $

SHARED_ONLY =		Yes

COMMENT =		SIPE plugin for Pidgin

DISTNAME =		pidgin-sipe-1.13.1
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		http://sipe.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 idn m nspr4 nss3 nssutil3 pcre
WANTLIB += plc4 plds4 purple smime3 softokn3 sqlite3 ssl3 util
WANTLIB += xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=sipe/}

LIB_DEPENDS =		mail/gmime \
			net/pidgin,-libpurple \
			security/nss
RUN_DEPENDS =		net/pidgin

MODULES =		devel/gettext

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-purple \
			--disable-telepathy \
			--without-vv
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
