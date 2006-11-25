# $OpenBSD: Makefile,v 1.31 2006/11/25 17:04:32 espie Exp $

COMMENT-main=	"MPEG2 and MPEG-4 AAC decoder"
COMMENT-xmms=	"XMMS input plugin for AAC files"
DISTNAME=	faad2-2.0
PKGNAME-main=	faad-2.0p5
PKGNAME-xmms=	faad-xmms-2.0p3
CATEGORIES=    	audio
MASTER_SITES=	http://mirrors.protection.cx/~jolan/
SHARED_LIBS +=	faad                 0.0      # .0.0
SHARED_LIBS +=	mp4v2                1.0      # .0.0
SHARED_LIBS +=	mp4ff                0.0      # .0.0

HOMEPAGE=	http://www.audiocoding.com/

# GPL
PERMIT_PACKAGE_CDROM=	"Patents"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"Patents"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m stdc++

BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS}
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

WRKDIST=	${WRKDIR}/faad2
CONFIGURE_STYLE= automake
AUTOCONF_VERSION=2.59
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-lm" \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}
CONFIGURE_ARGS+=--with-mp4v2

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
			faad,mp4v2::audio/faad
RUN_DEPENDS-xmms=	::audio/xmms
WANTLIB-xmms=		${WANTLIB} \
			X11 Xext Xi pthread iconv intl glib gmodule gtk gdk
WANTLIB-main=		${WANTLIB} c


post-patch:
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} PATH=${PORTPATH} \
		sh bootstrap

pre-configure:
	@perl -pi -e 's/--no-verify//g' ${WRKSRC}/configure

post-configure:
	@cp ${WRKSRC}/config.h ${WRKSRC}/faadconfig.h

post-install:
	@${INSTALL_DATA} ${WRKSRC}/faadconfig.h ${PREFIX}/include

.include <bsd.port.mk>
