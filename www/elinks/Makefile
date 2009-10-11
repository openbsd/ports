# $OpenBSD: Makefile,v 1.17 2009/10/11 15:55:50 edd Exp $

COMMENT=		full-featured text WWW browser
DISTNAME=		elinks-0.11.7
PKGNAME=		${DISTNAME}p0
CATEGORIES=		www
MASTER_SITES=		http://elinks.cz/download/

HOMEPAGE=		http://elinks.cz/

MAINTAINER=		Edd Barrett <edd@openbsd.org>

# GPL, v2 only
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS=-L${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-bzlib \
			--without-spidermonkey \
			--disable-xbel \
			--disable-backtrace \
			--enable-gopher \
			--with-libiconv=${LOCALBASE}
# don't hide compiler command lines
MAKE_ENV=		V=true
LIB_DEPENDS+=		bz2::archivers/bzip2 \
			idn::devel/libidn
USE_GMAKE=		Yes

RUN_DEPENDS=		::devel/gettext
WANTLIB=		crypto c z ssl
MODULES=		converters/libiconv

FLAVORS=		lua no_x11
FLAVOR?=		

.if ${FLAVOR:L:Mlua}
BROKEN=			has this ever worked?
CONFIGURE_ARGS+=	--with-lua
LIB_DEPENDS+=		lua.>=5.1::lang/lua
WANTLIB+=		m
.else
CONFIGURE_ARGS+=	--without-lua
.endif

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
CONFIGURE_ARGS+=	--with-x
USE_X11=		Yes
WANTLIB+=		X11
.endif

.include <bsd.port.mk>
