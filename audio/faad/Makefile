# $OpenBSD: Makefile,v 1.39 2009/08/10 06:29:52 kili Exp $

COMMENT-main=	MPEG-2 and MPEG-4 AAC decoder
COMMENT-xmms=	XMMS input plugin for AAC files
V=		2.6.1
DISTNAME=	faad2-${V}
PKGNAME-main=	faad-${V}
PKGNAME-xmms=	faad-xmms-${V}p0
CATEGORIES=    	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=faac/}
SHARED_LIBS +=	faad                 2.0      # .0.0
SHARED_LIBS +=	mp4ff                1.0      # .0.0

HOMEPAGE=	http://www.audiocoding.com/

# GPL
PERMIT_PACKAGE_CDROM=	Patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Patents
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS}
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

WRKDIST=	${WRKDIR}/faad2
CONFIGURE_STYLE= automake
AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.9
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-lm" \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

PSEUDO_FLAVORS=	no_xmms
FLAVOR?=
MULTI_PACKAGES=-main

.if !${FLAVOR:L:Mno_xmms}
MULTI_PACKAGES+=-xmms
USE_X11=	Yes
BUILD_DEPENDS+=		::audio/id3lib
CONFIGURE_ARGS+= --with-xmms
.else
CONFIGURE_ARGS+= --without-xmms
.endif

LIB_DEPENDS-xmms=	xmms.>=3::audio/xmms \
			faad,mp4ff::audio/faad
RUN_DEPENDS-xmms=	::audio/xmms
WANTLIB-xmms=		${WANTLIB} \
			X11 Xau Xdmcp Xext Xi iconv intl glib \
			gmodule gtk gdk pthread-stubs xcb
WANTLIB-main=		${WANTLIB} c


post-patch:
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} PATH=${PORTPATH} \
		sh bootstrap

post-configure:
	@cp ${WRKSRC}/config.h ${WRKSRC}/faadconfig.h

post-install:
	@${INSTALL_DATA} ${WRKSRC}/faadconfig.h ${PREFIX}/include

.include <bsd.port.mk>
