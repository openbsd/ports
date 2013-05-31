# $OpenBSD: Makefile,v 1.3 2013/05/31 19:08:15 jturner Exp $

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

post-extract:
	@rm -f ${WRKSRC}/.depend

do-test:
	@cd ${WRKSRC}/tests && ${MAKE} test

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lumail ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lumail
	${INSTALL_DATA} ${WRKSRC}/lumail.lua ${PREFIX}/share/examples/lumail

.include <bsd.port.mk>
