# $OpenBSD: Makefile,v 1.24 2014/04/13 01:01:39 naddy Exp $

ONLY_FOR_ARCHS = ${GCC4_ARCHS}
.if (${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "amd64")
# likely to bump into MAXDSIZ on arch other than the above
MAKE_ENV +=	CXXNOOPT=-O0
.endif

BROKEN-hppa =	linking fails with 'cannot handle R_PARISC_PCREL17F'
BROKEN-alpha =	enblend-enblend.o: .got subsegment exceeds 64K (size 77816)

COMMENT =	blend seams in panoramic image mosaics

DISTNAME =	enblend-enfuse-4.0
PKGNAME =	${DISTNAME:L}
WRKDIST =	${WRKDIR}/enblend-enfuse-4.0-753b534c819d
REVISION =	3
CATEGORIES =	graphics

HOMEPAGE =	http://enblend.sourceforge.net/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2+, MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	GL GLEW GLU Half ICE Iex IlmImf IlmThread Imath SM X11 Xi Xmu
WANTLIB +=	boost_filesystem boost_system c glut>=4 jpeg lcms m png pthread
WANTLIB +=	stdc++ tiff xmi z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=enblend/}

BUILD_DEPENDS =	math/gnuplot \
		print/transfig \
		www/tidyp>=1.04p1
LIB_DEPENDS =	devel/boost \
		graphics/glew \
		graphics/freeglut \
		graphics/ilmbase \
		graphics/lcms \
		graphics/libxmi \
		graphics/openexr \
		graphics/png \
		graphics/tiff

CONFIGURE_STYLE = autoconf gnu
AUTOCONF_VERSION = 2.61
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}
USE_GMAKE = Yes

CPPFLAGS +=	-I${WRKSRC}/src/vigra_impex \
		-I${LOCALBASE}/include \
		-I${X11BASE}/include

LDFLAGS +=	-L${LOCALBASE}/lib \
		-L${X11BASE}/lib


CONFIGURE_ENV =	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}"

# need to fix bashisms in doc/Makefile.in first
#post-build:
#	@cd ${WRKBUILD}/doc && \
#	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} xhtml

# Fix with newer GNUplot versions. From Gentoo bz #334331
post-extract:
	@perl -pi -e 's,FreeSans 10,"FreeSans\,10",g' ${WRKSRC}/doc/*.gp.in

.include <bsd.port.mk>
