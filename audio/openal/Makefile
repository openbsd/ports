# $OpenBSD: Makefile,v 1.2 2004/11/21 17:51:46 espie Exp $

COMMENT=	"cross-platform 3D audio API"
DISTNAME=	openal-20040816
CATEGORIES=	audio
MASTER_SITES=	http://math.smsu.edu/~erik/files/fbsd/ \
		http://www.smluc.org/~erik/files/fbsd/

HOMEPAGE=	http://www.openal.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m ogg

LIB_DEPENDS=	vorbis.3.0,vorbisfile.4.0::audio/libvorbis

NO_REGRESS=	Yes
USE_GMAKE=	Yes

WRKSRC=		${WRKDIST}/linux

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-vorbis
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib" \
	LIBS="-logg"

.include <bsd.port.mk>
