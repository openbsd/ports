# $OpenBSD: Makefile,v 1.38 2019/11/10 15:32:55 ajacoutot Exp $

ONLY_FOR_ARCHS = ${GCC4_ARCHS} ${CLANG_ARCHS}
.if (${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "arm64")
# likely to bump into MAXDSIZ on arch other than the above
MAKE_ENV +=	CXXNOOPT=-O0
.endif

BROKEN-hppa =	linking fails with 'cannot handle R_PARISC_PCREL17F'
BROKEN-alpha =	enblend-enblend.o: .got subsegment exceeds 64K (size 77816)

COMMENT =	blend seams in panoramic image mosaics

DISTNAME =	enblend-enfuse-4.2
REVISION =	2
CATEGORIES =	graphics

HOMEPAGE =	http://enblend.sourceforge.net/

# GPLv2+, MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c gsl lcms2 m tiff vigraimpex

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=enblend/}

COMPILER =	base-clang ports-gcc
BUILD_DEPENDS =	devel/help2man\
		graphics/openexr \
		math/gnuplot \
		print/texlive/base \
		print/transfig \
		www/tidyp>=1.04p1
LIB_DEPENDS =	devel/gsl \
		graphics/lcms2 \
		graphics/vigra

SEPARATE_BUILD = Yes
CONFIGURE_STYLE = autoconf
AUTOCONF_VERSION = 2.69
USE_GMAKE = Yes

CPPFLAGS +=	-I${LOCALBASE}/include \
		-I${X11BASE}/include

LDFLAGS +=	-L${LOCALBASE}/lib \
		-L${X11BASE}/lib


CONFIGURE_ENV =	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}"

CXXFLAGS +=	-std=c++11 -pthread

# need to fix bashisms in doc/Makefile.in first
#post-build:
#	@cd ${WRKBUILD}/doc && \
#	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} xhtml

.include <bsd.port.mk>
