# $OpenBSD: Makefile,v 1.29 2016/11/24 08:16:03 kirby Exp $

ONLY_FOR_ARCHS = ${GCC4_ARCHS}
.if (${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "amd64")
# likely to bump into MAXDSIZ on arch other than the above
MAKE_ENV +=	CXXNOOPT=-O0
.endif

BROKEN-hppa =	linking fails with 'cannot handle R_PARISC_PCREL17F'
BROKEN-alpha =	enblend-enblend.o: .got subsegment exceeds 64K (size 77816)

COMMENT =	blend seams in panoramic image mosaics

DISTNAME =	enblend-enfuse-4.2
CATEGORIES =	graphics

HOMEPAGE =	http://enblend.sourceforge.net/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2+, MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Half Iex IexMath IlmImf IlmThread Imath c gsl gslcblas
WANTLIB += jpeg lcms2 m png pthread tiff vigraimpex z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=enblend/}

MODULES =	gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS +=c++
BUILD_DEPENDS =	devel/help2man\
		math/gnuplot \
		print/texlive/base \
		print/transfig \
		www/tidyp>=1.04p1
LIB_DEPENDS =	devel/gsl \
		graphics/ilmbase \
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
