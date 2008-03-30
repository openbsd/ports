# $OpenBSD: Makefile,v 1.1.1.1 2008/03/30 13:52:10 simon Exp $

COMMENT=	tilt the floor to roll a ball through an obstacle course

V=		20080115
DISTNAME=	neverball-$V
CATEGORIES=	games

HOMEPAGE=	http://icculus.org/neverball/
MASTER_SITES=	http://openbsd.fi/distfiles/

MAINTAINER=	Antti Harri <iku@openbsd.fi>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	GL SDL c m pthread z

LIB_DEPENDS=	ogg::audio/libogg \
		vorbis,vorbisfile::audio/libvorbis \
		jpeg::graphics/jpeg \
		png::graphics/png \
		SDL_ttf::devel/sdl-ttf

MODULES=	devel/gettext

USE_GMAKE=	Yes
NO_REGRESS=	Yes

MAKE_FLAGS=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -logg -lvorbis" \
		INTL_LIBS="-lintl -liconv"

pre-configure:
	perl -pi -e 's,\./data,${PREFIX}/share/neverball/data,' \
		${WRKSRC}/share/base_config.h
	perl -pi -e 's,\./locale,${PREFIX}/share/locale,' \
		${WRKSRC}/share/base_config.h
	perl -pi -e 's,^version=".*",version=$V,' \
		${WRKSRC}/scripts/version.sh

do-install:
	cd ${WRKSRC} && ${INSTALL_PROGRAM} neverball neverputt ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/neverball \
		${PREFIX}/share/doc/neverball
	cd ${WRKSRC} && find data ! \( -name .svn -type d -prune \) -type f \
		| pax -rw ${PREFIX}/share/neverball
	cd ${WRKSRC} && find locale ! \( -name .svn -type d -prune \) -type f \
		| pax -rw ${PREFIX}/share
	cd ${WRKSRC} && ${INSTALL_DATA} COPYING README doc/AUTHORS doc/MANUAL \
		${PREFIX}/share/doc/neverball

.include <bsd.port.mk>
