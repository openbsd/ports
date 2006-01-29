# $OpenBSD: Makefile,v 1.4 2006/01/29 15:41:00 sturm Exp $

COMMENT=		"full-featured text WWW browser"
DISTNAME=		elinks-0.11.0
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		www
MASTER_SITES=		http://elinks.cz/download/

HOMEPAGE=		http://elinks.cz/

MAINTAINER=		James Prevatt <jprevatt+bsd@paunix.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-bzlib \
			--disable-xbel \
			--enable-gopher \
			--with-libiconv=${LOCALBASE}
LIB_DEPENDS+=		bz2::archivers/bzip2
USE_GMAKE=		Yes

RUN_DEPENDS=		::devel/gettext
WANTLIB=		crypto c z ssl
MODULES=		converters/libiconv

FLAVORS=		lua no_x11
FLAVOR?=		

.if ${FLAVOR:L:Mlua}
CONFIGURE_ARGS+=	--with-lua
LIB_DEPENDS+=		lua.5,lualib.5::lang/lua
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
