# $OpenBSD: Makefile,v 1.11 2010/10/24 21:21:00 ajacoutot Exp $

VMEM_WARNING =	Yes
ONLY_FOR_ARCHS = ${GCC4_ARCHS}
.if (${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "amd64")
# likely to bump into MAXDSIZ on arch other than the above
MAKE_ENV +=	CXXNOOPT=-O0
.endif

COMMENT =	blend seams in panoramic image mosaics

DISTNAME =	enblend-enfuse-4.0
PKGNAME =	${DISTNAME:L}
WRKDIST =	${WRKDIR}/enblend-enfuse-4.0-753b534c819d
CATEGORIES =	graphics

HOMEPAGE =	http://enblend.sourceforge.net/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2+, MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	GL GLEW GLU Half ICE Iex IlmImf IlmThread Imath SM X11 Xi Xmu
WANTLIB +=	boost_filesystem boost_system c glut.>=4 jpeg lcms m png pthread
WANTLIB +=	stdc++ tiff xmi z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=enblend/}

BUILD_DEPENDS =	::math/gnuplot \
		::print/transfig \
		::www/tidy
LIB_DEPENDS =	::devel/boost \
		::graphics/glew \
		::graphics/freeglut \
		::graphics/ilmbase \
		::graphics/lcms \
		::graphics/libxmi \
		::graphics/openexr \
		::graphics/png \
		::graphics/tiff

CONFIGURE_STYLE = gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}
USE_GMAKE = Yes
USE_GROFF =	Yes

CPPFLAGS +=	-I${WRKSRC}/src/vigra_impex \
		-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng \
		-I${X11BASE}/include

LDFLAGS +=	-L${LOCALBASE}/lib \
		-L${X11BASE}/lib


CONFIGURE_ENV =	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}"

# need to fix bashisms in doc/Makefile.in first
#post-build:
#	@cd ${WRKBUILD}/doc && \
#	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} xhtml

.include <bsd.port.mk>
