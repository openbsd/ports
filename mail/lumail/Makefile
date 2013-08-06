# $OpenBSD: Makefile,v 1.9 2013/08/06 23:20:37 jturner Exp $

COMMENT =		console-based e-mail client with Lua scripting support

DISTNAME =		lumail-0.16
CATEGORIES =		mail

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://lumail.org/
MASTER_SITES =		http://lumail.org/download/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c ${MODLUA_WANTLIB} m mimetic ncursesw pcre pcrecpp

MODULES =		gcc4 lang/lua

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

LIB_DEPENDS +=		${MODLUA_LIB_DEPENDS} \
			mail/mimetic \
			devel/pcre

USE_GMAKE =		Yes
ALL_TARGET =		lumail
MAKE_ENV =		CXX="${CXX}" \
			CPPFLAGS="-std=gnu++0x -I${LOCALBASE}/include \
				`pkg-config --cflags ${MODLUA_DEP}`" \
			LDLIBS="`pkg-config --libs ${MODLUA_DEP}` \
				-lmimetic -lncursesw -lpcrecpp -lpcre"

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lumail ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lumail
	${INSTALL_DATA} ${WRKSRC}/lumail.lua ${PREFIX}/share/examples/lumail

.include <bsd.port.mk>
