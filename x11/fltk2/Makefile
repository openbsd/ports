# $OpenBSD: Makefile,v 1.14 2013/03/11 11:46:09 espie Exp $

COMMENT =	fast light toolkit

V =		7725
DISTNAME =	fltk-2.0.x-r${V}
PKGNAME =	fltk2-2.0.${V}

REVISION =	0
EPOCH =		0

CATEGORIES =	x11

HOMEPAGE =	http://www.fltk.org/

# FLTK/GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 	X11 Xcursor Xext Xft Xi Xinerama Xrender c fontconfig m \
		pthread stdc++ z jpeg png

MASTER_SITES =	http://ftp.easysw.com/pub/fltk/snapshots/ \
		http://ftp2.easysw.com/pub/fltk/snapshots/

LIB_DEPENDS =	graphics/jpeg \
		graphics/png

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

TEST_IS_INTERACTIVE= x11

do-test:
	@cd ${WRKSRC}/test && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} && \
		./demo

.include <bsd.port.mk>	
