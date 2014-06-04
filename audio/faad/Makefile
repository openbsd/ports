# $OpenBSD: Makefile,v 1.55 2014/06/04 21:37:30 miod Exp $

# gcc -iquote
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT-main=	MPEG-2 and MPEG-4 AAC decoder
COMMENT-xmms=	XMMS input plugin for MP4/M4A/AAC files

V=		2.7
DISTNAME=	faad2-${V}
PKGNAME-main=	faad-${V}
PKGNAME-xmms=	xmms-faad-${V}
REVISION-xmms=	1
CATEGORIES=    	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=faac/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	faad	3.0 \
		mp4ff	2.0

HOMEPAGE=	http://www.audiocoding.com/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB-main=	c m
WANTLIB-xmms=	X11 Xext Xi faad gdk glib gmodule gtk m mp4ff pthread \
		xcb xmms>=3 ${MODGETTEXT_WANTLIB}

MODULES=	devel/gettext
# bootstrap checks for libtoolize
BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

LIB_DEPENDS-main=	# empty
RUN_DEPENDS-main=	# empty

LIB_DEPENDS-xmms=	${BUILD_PKGPATH} \
			${MODGETTEXT_LIB_DEPENDS} \
			audio/xmms
RUN_DEPENDS-xmms=	${MODGETTEXT_RUN_DEPENDS}

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
AUTOCONF_VERSION= 2.61
AUTOMAKE_VERSION= 1.9
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

PSEUDO_FLAVORS=	no_xmms
FLAVOR?= no_xmms

MULTI_PACKAGES=-main -xmms

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-xmms}
BUILD_DEPENDS+=	audio/id3lib
CONFIGURE_ARGS+= --with-xmms
.endif

post-extract:
	@mv ${WRKSRC}/frontend/faad.man ${WRKSRC}/frontend/faad.1

post-patch:
	@cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} PATH=${PORTPATH} \
	    sh bootstrap

.include <bsd.port.mk>
