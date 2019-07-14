# $OpenBSD: Makefile,v 1.61 2019/07/14 00:39:35 naddy Exp $

# gcc -iquote
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT=	MPEG-2 and MPEG-4 AAC decoder

V=		2.7
DISTNAME=	faad2-${V}
PKGNAME=	faad-${V}
REVISION=	2
CATEGORIES=    	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=faac/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	faad	3.0 \
		mp4ff	2.0

HOMEPAGE=	http://www.audiocoding.com/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c m

# bootstrap checks for libtoolize
BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
AUTOCONF_VERSION= 2.61
AUTOMAKE_VERSION= 1.9
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@mv ${WRKSRC}/frontend/faad.man ${WRKSRC}/frontend/faad.1

post-patch:
	@cd ${WRKSRC} && ${AUTOCONF_ENV} sh bootstrap

.include <bsd.port.mk>
