# $OpenBSD: Makefile,v 1.31 2019/07/12 20:48:43 sthen Exp $

BROKEN-hppa =	-Werror + sip-csta.c:707: warning: cast increases required alignment of target type

COMMENT =		SIPE plugin for Pidgin

DISTNAME =		pidgin-sipe-1.20.0
REVISION =		5

CATEGORIES =		net

HOMEPAGE =		http://sipe.sourceforge.net/

MAINTAINER =		Tom Doherty <tom@singlesecond.com>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =  assuan crypto dbus-1 dbus-glib-1 ffi gadu gio-2.0 glib-2.0
WANTLIB += gmime-2.6 gmodule-2.0 gobject-2.0 gpg-error gpgme
WANTLIB += gthread-2.0 iconv idn intl lzma m nspr4 nss3 nssutil3 pcre
WANTLIB += plc4 plds4 pthread purple smime3 sqlite3 ssl3 xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=sipe/}

LIB_DEPENDS =		mail/gmime \
			net/pidgin,-libpurple \
			databases/sqlite3 \
			security/nss
RUN_DEPENDS =		net/pidgin

MODULES =		textproc/intltool

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
