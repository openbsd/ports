# $OpenBSD: Makefile,v 1.3 2005/12/23 16:10:48 espie Exp $

COMMENT=	"cross-platform 3D audio API"
DISTNAME=	openal-20040816
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio
SHARED_LIBS=	openal	0.0
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

MAKE_FLAGS=MAJOR_VERSION=${LIBopenal_VERSION:R} VERSION=${LIBopenal_VERSION}
FAKE_FLAGS=${MAKE_FLAGS} DESTDIR=${WRKINST}

.include <bsd.port.mk>
