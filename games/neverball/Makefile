# $OpenBSD: Makefile,v 1.4 2009/08/10 06:31:42 kili Exp $

COMMENT-main=	tilt the floor to roll a ball through an obstacle course
COMMENT-data=	data for Neverball/Neverputt

V=		20081103
DISTNAME=	neverball-$V
PKGNAME=	neverball-$V
PKGNAME-main=	neverball-$Vp1
PKGNAME-data=	neverball-data-$Vp0
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	games x11

HOMEPAGE=	http://icculus.org/neverball/
MASTER_SITES=	http://openbsd.fi/distfiles/

MULTI_PACKAGES=	-main -data

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-main=	GL SDL X11 c iconv intl m pthread pthread-stubs xcb z

LIB_DEPENDS-main=	ogg::audio/libogg \
			vorbis,vorbisfile::audio/libvorbis \
			jpeg::graphics/jpeg \
			png::graphics/png \
			SDL_ttf::devel/sdl-ttf
LIB_DEPENDS-data=
RUN_DEPENDS-main=	:neverball-data-$V:${BUILD_PKGPATH},-data

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
