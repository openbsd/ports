# $OpenBSD: Makefile,v 1.6 2003/12/10 21:28:58 naddy Exp $

COMMENT=	"play games built around LucasArts' SCUMM"
DISTNAME=	scummvm-0.5.1
EXTRACT_SUFX=	.tgz
CATEGORIES=	games x11 emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

HOMEPAGE=	http://scummvm.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	SDL::devel/sdl \
		mad.2::audio/libmad \
		vorbis.0,vorbisfile.1::audio/libvorbis

NO_REGRESS=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

MAKE_ENV+=	CXXFLAGS="${CXXFLAGS} -DSCUMM_NEED_ALIGNMENT" CXX="${CXX}"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scummvm
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/scummvm
	${INSTALL_DATA} ${WRKSRC}/scummvm.xpm ${PREFIX}/share/pixmaps
	${INSTALL_MAN} ${WRKSRC}/scummvm.6 ${PREFIX}/man/man6
	${INSTALL_PROGRAM} ${WRKSRC}/scummvm ${PREFIX}/bin

.include <bsd.port.mk>
