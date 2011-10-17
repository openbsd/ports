# $OpenBSD: Makefile,v 1.49 2011/10/17 10:38:41 espie Exp $

COMMENT-main=	MPEG-2 and MPEG-4 AAC decoder
COMMENT-xmms=	XMMS input plugin for AAC files

V=		2.6.1
DISTNAME=	faad2-${V}
PKGNAME-main=	faad-${V}
REVISION-main=	3
PKGNAME-xmms=	faad-xmms-${V}
REVISION-xmms=	2
CATEGORIES=    	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=faac/}

SHARED_LIBS +=	faad                 2.0      # .0.0
SHARED_LIBS +=	mp4ff                1.0      # .0.0

HOMEPAGE=	http://www.audiocoding.com/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Patents
PERMIT_DISTFILES_FTP=	Yes

# bootstrap checks for libtoolize
BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

WRKDIST=	${WRKDIR}/faad2

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
AUTOCONF_VERSION= 2.61
AUTOMAKE_VERSION= 1.9
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-lm"

PSEUDO_FLAVORS=	no_xmms
FLAVOR?= no_xmms

MULTI_PACKAGES=-main -xmms

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-xmms}
BUILD_DEPENDS+=	audio/id3lib
CONFIGURE_ARGS+= --with-xmms
.endif

LIB_DEPENDS-xmms=	audio/xmms \
			${BUILD_PKGPATH}
RUN_DEPENDS-xmms=	audio/xmms
WANTLIB-xmms=		${MODGETTEXT_WANTLIB} \
			X11 Xau Xdmcp Xext Xi glib \
			gmodule gtk gdk pthread-stubs xcb \
			xmms>=3 faad mp4ff m
WANTLIB-main=		c m

post-patch:
	@cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} PATH=${PORTPATH} \
		sh bootstrap

post-configure:
	@cp ${WRKSRC}/config.h ${WRKSRC}/faadconfig.h

post-install:
	${INSTALL_DATA} ${WRKSRC}/faadconfig.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/common/mp4ff/mp4ff.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/common/mp4ff/mp4ff_int_types.h ${PREFIX}/include

.include <bsd.port.mk>
