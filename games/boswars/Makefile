# $OpenBSD: Makefile,v 1.7 2009/08/10 06:31:41 kili Exp $

COMMENT=	real-time strategy game

V=		2.5
DISTNAME=	boswars-${V}-src
PKGNAME=	boswars-${V}p0
CATEGORIES=	games x11

HOMEPAGE=	http://www.boswars.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.boswars.org/dist/releases/

WANTLIB=	GL X11 c m ogg pthread pthread-stubs stdc++ xcb z

MODULES=	devel/scons
MODSCONS_FLAGS=	CPPPATH="${CPPPATH} ${LOCALBASE}/include/libpng" \
		LIBS="-lm" \
		opengl=1

LIB_DEPENDS=	SDL.>=7::devel/sdl \
		lua.>=5::lang/lua \
		theora.>=2::multimedia/libtheora \
		vorbis.>=5::audio/libvorbis \
		png.>=5::graphics/png

USE_X11=	Yes
NO_REGRESS=	Yes

DATA_DIR=	campaigns graphics intro maps languages scripts sounds units

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/engine/include/stratagus.h
	@perl -pi -e 's,!!X11BASE!!,${X11BASE},g' \
		${WRKSRC}/SConstruct

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/boswars ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/boswars
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/boswars/html/scripts
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/boswars/html
	${INSTALL_DATA} ${WRKSRC}/doc/scripts/{*.html,*.py} ${PREFIX}/share/doc/boswars/html/scripts
.for i in ${DATA_DIR}
	cp -R ${WRKSRC}/${i} ${PREFIX}/share/boswars
.endfor
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/boswars

.include <bsd.port.mk>
