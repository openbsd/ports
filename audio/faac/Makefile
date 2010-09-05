# $OpenBSD: Makefile,v 1.7 2010/09/05 10:25:16 sthen Exp $

COMMENT=	MPEG-2 and MPEG-4 AAC encoder
DISTNAME=	faac-1.26
CATEGORIES=    	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=faac/}
SHARED_LIBS +=	faac                 1.0      # .0.0

HOMEPAGE=	http://www.audiocoding.com/

# GPL
PERMIT_PACKAGE_CDROM=	Patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Patents
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m stdc++ mp4v2.>=3

# uses macros from libtool.m4
BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS} \
		::devel/libtool
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

LIB_DEPENDS=	::multimedia/libmp4v2

WRKDIST=	${WRKDIR}/faac
CONFIGURE_STYLE= automake
AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.4
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--without-mp4v2

post-patch:
	@touch ${WRKSRC}/frontend/dummy.cc
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} PATH=${PORTPATH} \
		sh bootstrap

.include <bsd.port.mk>
