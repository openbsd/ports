# $OpenBSD: Makefile,v 1.5 2003/02/15 16:42:22 espie Exp $

COMMENT=	"MPEG2 and MPEG-4 AAC decoder"

DISTNAME=	faad2-1.1
PKGNAME=	faad-2.1.1
CATEGORIES=    	audio
HOMEPAGE=	http://faac.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Patents
PERMIT_PACKAGE_FTP=	Patents
PERMIT_DISTFILES_CDROM=	Patents
PERMIT_DISTFILES_FTP=	Patents

MASTER_SITES=	http://faac.sourceforge.net/files/

LIB_DEPENDS=	sndfile:libsndfile->=1.0.1:audio/libsndfile

AUTOCONF_VERSION=2.13
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS}
USE_LIBTOOL=	Yes

WRKDIST=	${WRKDIR}/faad2
CONFIGURE_STYLE= automake
AUTOCONF_VERSION=2.13
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-lm" \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

post-patch:
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} sh bootstrap

.include <bsd.port.mk>
