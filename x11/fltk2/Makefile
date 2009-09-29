# $OpenBSD: Makefile,v 1.5 2009/09/29 07:29:09 benoit Exp $

COMMENT =	fast light toolkit

V =		6879
DISTNAME =	fltk-2.0.x-r${V}
PKGNAME =	fltk2-2.0.${V}
CATEGORIES =	x11

HOMEPAGE =	http://www.fltk.org/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# FLTK/GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 	X11 Xcursor Xext Xft Xi Xinerama Xrender c fontconfig m \
		pthread stdc++ z

MASTER_SITES =	http://ftp.easysw.com/pub/fltk/snapshots/ \
		http://ftp2.easysw.com/pub/fltk/snapshots/

LIB_DEPENDS =	jpeg.>=62::graphics/jpeg \
		png.>=8::graphics/png

USE_X11 =	Yes
USE_GMAKE =	Yes

MAKE_FLAGS=	CC=${CC} \
		CXX=${CXX} \
		OPTIM="" # empty

CONFIGURE_STYLE =gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
# make sure X overlay is enabled even when there's no running X server
# at build time
CONFIGURE_ENV += ac_cv_have_overlay=yes

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-gl \
		--enable-threads \
		--enable-jpeg \
		--enable-zlib \
		--enable-png \
		--enable-xft \
		--enable-xdbe \
		--enable-xinerama \
		--disable-cairo \
		--disable-x11 \
		--disable-xshm

# shared libs are disabled until fltk2 stabilises
CONFIGURE_ARGS=	--disable-shared

REGRESS_IS_INTERACTIVE= x11

do-regress:
	@cd ${WRKSRC}/test && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} && \
		./demo

.include <bsd.port.mk>	
