# $OpenBSD: Makefile,v 1.15 2014/04/24 21:37:47 sthen Exp $

BROKEN-hppa =	-Werror + sip-csta.c:707: warning: cast increases required alignment of target type

SHARED_ONLY =		Yes

COMMENT =		SIPE plugin for Pidgin

DISTNAME =		pidgin-sipe-1.18.1

CATEGORIES =		net

HOMEPAGE =		http://sipe.sourceforge.net/

MAINTAINER =		Tom Doherty <tom@singlesecond.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmime-2.6
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 idn m nspr4 nss3
WANTLIB += nssutil3 pcre plc4 plds4 pthread purple smime3 softokn3
WANTLIB += sqlite3 ssl3 util xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=sipe/}

LIB_DEPENDS =		mail/gmime \
			net/pidgin,-libpurple \
			security/nss
RUN_DEPENDS =		net/pidgin

MODULES =		devel/gettext \
			textproc/intltool

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-purple \
			--disable-telepathy \
			--without-vv
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
