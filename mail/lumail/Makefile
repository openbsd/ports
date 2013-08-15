# $OpenBSD: Makefile,v 1.11 2013/08/15 15:05:27 jturner Exp $

COMMENT =		console-based e-mail client with Lua scripting support

DISTNAME =		lumail-0.18
CATEGORIES =		mail

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://lumail.org/
MASTER_SITES =		http://lumail.org/download/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c gio-2.0 glib-2.0 gmime-2.6 gobject-2.0
WANTLIB +=		${MODLUA_WANTLIB} m ncursesw pcre pcrecpp pthread

MODULES =		devel/gettext gcc4 lang/lua

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

LIB_DEPENDS +=		${MODLUA_LIB_DEPENDS} \
			mail/gmime \
			devel/pcre

USE_GMAKE =		Yes
ALL_TARGET =		lumail
MAKE_FLAGS =		CC="${CXX}" \
			CPPFLAGS="-std=gnu++0x -I${LOCALBASE}/include \
				`pkg-config --cflags ${MODLUA_DEP}`" \
			LDLIBS="`pkg-config --libs ${MODLUA_DEP}` \
				-lncursesw -lpcrecpp -lpcre"

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lumail ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lumail
	${INSTALL_DATA} ${WRKSRC}/lumail.lua ${PREFIX}/share/examples/lumail

.include <bsd.port.mk>
