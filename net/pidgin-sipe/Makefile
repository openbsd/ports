BROKEN-hppa =	-Werror + sip-csta.c:707: warning: cast increases required alignment of target type

COMMENT =		SIPE plugin for Pidgin

DISTNAME =		pidgin-sipe-1.25.0

CATEGORIES =		net

HOMEPAGE =		https://sipe.sourceforge.io/

MAINTAINER =		Tom Doherty <tom@singlesecond.com>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += assuan crypto dbus-1 dbus-glib-1 execinfo ffi gadu
WANTLIB += gio-2.0 glib-2.0 gmime-3.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme gthread-2.0 iconv idn idn2 intl lzma
WANTLIB += m nspr4 nss3 nssutil3 pcre plc4 plds4 pthread purple
WANTLIB += smime3 ssl3 unistring xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=sipe/}

LIB_DEPENDS =		mail/gmime30 \
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
