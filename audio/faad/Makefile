# $OpenBSD: Makefile,v 1.14 2004/12/09 04:57:56 jcs Exp $

COMMENT=	"MPEG2 and MPEG-4 AAC decoder"
COMMENT-xmms=	"XMMS input plugin for AAC files"
DISTNAME=	faad2-2.0
PKGNAME=	faad-2.0
PKGNAME-xmms=	faad-xmms-2.0
CATEGORIES=    	audio
MASTER_SITES=	http://users.codefusionis.com/~jolan/

HOMEPAGE=	http://faac.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	"Patents"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"Patents"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

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
LIB_DEPENDS=	xmms.3::audio/xmms \
		faad::audio/faad
RUN_DEPENDS=	::audio/xmms
. endif
.else
. if ${MULTI_PACKAGES:M-xmms}
LIB_DEPENDS=	xmms.3::audio/xmms
BUILD_DEPENDS=	xmms-config::audio/xmms \
		::audio/id3lib
CONFIGURE_ARGS+= --with-xmms
WANTLIB+=	X11 Xext Xi pthread
. endif
.endif

post-patch:
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		PATH=${PORTPATH} sh bootstrap
	@perl -pi -e 's/--no-verify//g' ${WRKSRC}/configure

.include <bsd.port.mk>
