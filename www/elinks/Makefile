# $OpenBSD: Makefile,v 1.33 2014/06/02 14:37:15 sthen Exp $

COMMENT=		full-featured text WWW browser
DISTNAME=		elinks-0.11.7
REVISION=		8
CATEGORIES=		www
MASTER_SITES=		http://elinks.cz/download/

HOMEPAGE=		http://elinks.cz/

MAINTAINER=		Edd Barrett <edd@openbsd.org>

# GPL, v2 only
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.61
CONFIGURE_ENV+=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include \
			-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=	--with-bzlib \
			--disable-xbel \
			--disable-backtrace \
			--enable-gopher \
			--enable-256-colors \
			--with-libiconv=${LOCALBASE}

# don't hide compiler command lines
MAKE_ENV=		V=true
LIB_DEPENDS+=		archivers/bzip2 \
			devel/libidn

USE_GMAKE=		Yes
USE_GROFF =		Yes

RUN_DEPENDS=		devel/gettext
WANTLIB=		bz2 crypto c idn ssl z
MODULES=		converters/libiconv

FLAVORS=		lua no_x11 #js
FLAVOR?=

.if ${FLAVOR:Mlua}
BROKEN=			has this ever worked?
CONFIGURE_ARGS+=	--with-lua
LIB_DEPENDS+=		lang/lua
WANTLIB+=		m lua>=5.1
.else
CONFIGURE_ARGS+=	--without-lua
.endif

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
CONFIGURE_ARGS+=	--with-x
WANTLIB+=		X11
.endif

# Upstream recommends against enabling javascript support in
# this release due to security concerns. When this is port is
# updated to 0.12.x it can be enabled again.
#
#.if ${FLAVOR:Mjs}
#CONFIGURE_ARGS+=	--with-spidermonkey
#LIB_DEPENDS+=		lang/spidermonkey
#WANTLIB+=		pthread js>=2.0
#CFLAGS+=		-I${LOCALBASE}/include/js -pthread
#.else
CONFIGURE_ARGS+=	--without-spidermonkey
#.endif

.include <bsd.port.mk>
