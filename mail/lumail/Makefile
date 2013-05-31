# $OpenBSD: Makefile,v 1.2 2013/05/31 15:54:28 ajacoutot Exp $

COMMENT =		console-based e-mail client with Lua scripting support

DISTNAME =		lumail-0.07
CATEGORIES =		mail

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://lumail.org/
MASTER_SITES =		http://lumail.org/download/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c curses ${MODLUA_WANTLIB} m mimetic

MODULES =		gcc4 lang/lua

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

LIB_DEPENDS +=		${MODLUA_LIB_DEPENDS} \
			mail/mimetic

USE_GMAKE =		Yes
MAKE_ENV =		CXX="${CXX}" \
			CPPFLAGS="-std=gnu++0x -I${LOCALBASE}/include \
				`pkg-config --cflags ${MODLUA_DEP}`" \
			LDLIBS="`pkg-config --libs ${MODLUA_DEP}` -lcurses -lmimetic"

NO_TEST =		Yes

post-extract:
	rm ${WRKSRC}/.depend

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lumail ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lumail
	${INSTALL_DATA} ${WRKSRC}/lumail.lua ${PREFIX}/share/examples/lumail

.include <bsd.port.mk>
