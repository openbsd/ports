# $OpenBSD: Makefile,v 1.28 2017/11/09 19:44:12 landry Exp $

BROKEN-hppa =	-Werror + sip-csta.c:707: warning: cast increases required alignment of target type

COMMENT =		SIPE plugin for Pidgin

DISTNAME =		pidgin-sipe-1.20.0
REVISION =		3

CATEGORIES =		net

HOMEPAGE =		http://sipe.sourceforge.net/

MAINTAINER =		Tom Doherty <tom@singlesecond.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto dbus-1 dbus-glib-1 ffi gadu gio-2.0 glib-2.0 gmime-2.6
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 idn lzma m nspr4 
WANTLIB += nss3 nssutil3 pcre plc4 plds4 pthread purple smime3 
WANTLIB += sqlite3 ssl3 xml2 z assuan gpg-error gpgme-pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=sipe/}

LIB_DEPENDS =		mail/gmime \
			net/pidgin,-libpurple \
			databases/sqlite3 \
			security/nss
RUN_DEPENDS =		net/pidgin

MODULES =		devel/gettext \
			textproc/intltool

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-purple \
			--enable-openssl \
			--enable-nss \
			--disable-telepathy \
			--without-vv
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
