# $OpenBSD: Makefile,v 1.27 2006/08/01 11:17:56 espie Exp $

COMMENT=	"MPEG2 and MPEG-4 AAC decoder"
COMMENT-xmms=	"XMMS input plugin for AAC files"
DISTNAME=	faad2-2.0
PKGNAME=	faad-2.0p4
PKGNAME-xmms=	faad-xmms-2.0p3
CATEGORIES=    	audio
MASTER_SITES=	http://mirrors.protection.cx/~jolan/
SHARED_LIBS=	faad	0.0 \
		mp4ff	0.0 \
		mp4v2	1.0

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
MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_xmms}
MULTI_PACKAGES+=-xmms
.endif

SUBPACKAGE?=

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-xmms"
LIB_DEPENDS=	xmms.>=3::audio/xmms \
		faad,mp4v2::audio/faad
RUN_DEPENDS=	::audio/xmms
WANTLIB+=	X11 Xext Xi pthread iconv intl glib gmodule gtk gdk
. else
WANTLIB+=	c
. endif
.else
. if ${MULTI_PACKAGES:M-xmms}
LIB_DEPENDS=	xmms.3::audio/xmms
BUILD_DEPENDS+=	::audio/xmms \
		::audio/id3lib
CONFIGURE_ARGS+= --with-xmms
. else
CONFIGURE_ARGS+= --without-xmms
. endif
.endif

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
