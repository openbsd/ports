# $OpenBSD: Makefile,v 1.4 2007/09/05 16:48:02 ajacoutot Exp $

COMMENT=	real-time strategy game

V=		2.4.1
DISTNAME=	boswars-${V}-src
PKGNAME=	boswars-${V}
CATEGORIES=	games x11

HOMEPAGE=	http://www.boswars.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.boswars.org/dist/releases/

WANTLIB=	X11 Xext c m ogg pthread stdc++ usbhid z GL

BUILD_DEPENDS=	:scons-*:devel/scons
LIB_DEPENDS=	SDL.>=7::devel/sdl \
		lua.>=5::lang/lua \
		theora.>=2::multimedia/libtheora \
		vorbis.>=5::audio/libvorbis \
		png.>=5::graphics/png

USE_X11=	Yes
NO_REGRESS=	Yes

DATA_DIR=	campaigns graphics languages maps scripts sounds units video

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/engine/include/stratagus.h
	@perl -pi -e 's,!!X11BASE!!,${X11BASE},g' \
		${WRKSRC}/SConstruct

do-build:
	@${SETENV} ${MAKE_ENV} scons -C ${WRKSRC} \
		CC=${CC} CXX=${CXX} CCFLAGS="${CFLAGS}" \
		CPPPATH="${X11BASE}/include ${LOCALBASE}/include/libpng" \
		LIBPATH="${X11BASE}/lib ${LOCALBASE}/lib" LIBS="-lm" \
		opengl=1

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
