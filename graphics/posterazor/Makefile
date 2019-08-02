# $OpenBSD: Makefile,v 1.1.1.1 2019/08/02 15:24:45 kirby Exp $

COMMENT =	split large images into smaller ones to assemble posters

DISTNAME =	PosteRazor-1.5.1-Source
PKGNAME =	posterazor-1.5.1

CATEGORIES =	graphics

HOMEPAGE =	http://posterazor.sourceforge.net/

MAINTAINER =	Kirill Bychkov <kirby@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xpm c fltk fltk_images freeimage m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=posterazor/}

EXTRACT_SUFX =		.zip
EXTRACT_CASES = 	\
	*.zip) unzip -qa ${FULLDISTDIR}/$$archive -d ${WRKDIR}/${DISTNAME};;

# c++11
COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake
LIB_DEPENDS =		graphics/freeimage \
			x11/fltk

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include \
				-I${X11BASE}/include -Wno-write-strings \
				-Wno-deprecated-declarations \
				-Wno-reserved-user-defined-literal" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			-Wno-dev

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/src

post-extract:
	perl -i -pe 's/\r$$//' ${WRKSRC}/FlPosteRazorDialog.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/PosteRazor ${PREFIX}/bin/posterazor

.include <bsd.port.mk>
