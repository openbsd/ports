# $OpenBSD: Makefile,v 1.2 2002/11/20 08:16:07 pvalchev Exp $

COMMENT=	"MPEG2 and MPEG-4 AAC decoder"

DISTNAME=	faad2-1.1
CATEGORIES=    	audio
HOMEPAGE=	http://faac.sourceforge.net
PKGNAME=	faad-2.1.1
WRKDIST=	${WRKDIR}/faad2
MAINTAINER=

# BSD
PERMIT_PACKAGE_CDROM=	Patents
PERMIT_PACKAGE_FTP=	Patents
PERMIT_DISTFILES_CDROM=	Patents
PERMIT_DISTFILES_FTP=	Patents

CONFIGURE_ENV+= LDFLAGS="-L${LOCALBASE}/lib" CPPFLAGS="-I${LOCALBASE}/include" \
		LIBS="-lm"

LIB_DEPENDS=  sndfile:libsndfile->=1.0.1:audio/libsndfile

MASTER_SITES=	http://faac.sourceforge.net/files/

CONFIGURE_STYLE= automake
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

post-patch:
	cd ${WRKSRC} && sh bootstrap

.include <bsd.port.mk>
