# $OpenBSD: Makefile,v 1.3 2002/12/20 23:40:13 naddy Exp $

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

BUILD_DEPENDS=	::devel/autoconf
USE_LIBTOOL=	Yes

WRKDIST=	${WRKDIR}/faad2
CONFIGURE_STYLE= automake
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="-lm"

post-patch:
	@cd ${WRKSRC} && sh bootstrap

.include <bsd.port.mk>
