# $OpenBSD: Makefile,v 1.8 2019/07/12 20:46:17 sthen Exp $

COMMENT =		wonderful puzzle game
V = 			1.0.1
DISTNAME = 		fillets-ng-${V}
CATEGORIES =		games
HOMEPAGE =		http://fillets.sourceforge.net/
REVISION =              2

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB = 		SDL SDL_image SDL_mixer SDL_ttf c fribidi \
			${MODLUA_WANTLIB} m pthread smpeg ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fillets/}
DISTFILES = 		fillets-ng-${V}.tar.gz \
			fillets-ng-data-${V}.tar.gz
EXTRACT_ONLY = 		fillets-ng-${V}.tar.gz
MODULES =		lang/lua
MODLUA_VERSION = 	5.1
LIB_DEPENDS =		devel/fribidi \
			devel/sdl \
			devel/sdl-image \
			devel/sdl-mixer \
			devel/sdl-ttf \
			devel/smpeg
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-lua=${PREFIX} \
			--datadir=${LOCALBASE}/share/fillets-ng
CONFIGURE_ENV += 	CPPFLAGS="${CPPFLAGS} -I${MODLUA_INCL_DIR}" \
			LUA_CFLAGS=-I${MODLUA_INCL_DIR} \
			LUA_LIBS=${MODLUA_LIB}

post-patch:
	perl -pi -e "s/-llua50/-llua${MODLUA_VERSION}/g" ${WRKSRC}/configure
	perl -pi -e "s/-llua /-llua${MODLUA_VERSION} /g" ${WRKSRC}/configure
	perl -pi -e "s/-llualib//g" ${WRKSRC}/configure
	perl -pi -e "s#/usr/share/doc/fillets-ng/html/manual.html#${LOCALBASE}/share/fillets-ng/doc/html/manual.html#" \
		${WRKSRC}/fillets.6

post-install:
	tar -C ${PREFIX}/share -zxf ${FULLDISTDIR}/fillets-ng-data-${V}.tar.gz
	mv ${PREFIX}/share/fillets-ng-data-${V} ${PREFIX}/share/fillets-ng

.include <bsd.port.mk>
