# $OpenBSD: Makefile,v 1.3 2009/04/21 09:20:26 sthen Exp $

VMEM_WARNING =	Yes
# and I'm not joking! - don't waste build time on the following arch
# where MAXDSIZ is simply too low to compile this software:
NOT_FOR_ARCHS = m68k m88k sparc vax
# other arch may need MAXDSIZ adjustment, lower optimization levels,
# or may fail completely. i386 sparc64 and amd64 known to build given
# enough RAM.
#
# MAKE_ENV +=	CXXNOOPT=-O
# MAKE_ENV +=	CXXNOOPT=-O0

COMMENT =	blend seams in panoramic image mosaics

DISTNAME =	enblend-enfuse-3.2
CATEGORIES =	graphics

HOMEPAGE =	http://enblend.sourceforge.net/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2+, MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=	GL GLU ICE SM X11 Xi Xmu c jpeg m pthread stdc++ z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=enblend/}

BUILD_DEPENDS += ::devel/boost

LIB_DEPENDS =	GLEW::graphics/glew \
		glut.>=4::graphics/freeglut \
		Half,Iex,IlmThread,Imath::graphics/ilmbase \
		lcms::graphics/lcms \
		xmi::graphics/libxmi \
		IlmImf::graphics/openexr \
		png::graphics/png \
		tiff::graphics/tiff

CONFIGURE_STYLE = gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}

CPPFLAGS +=	-I${WRKSRC}/src/vigra_impex \
		-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng \
		-I${X11BASE}/include

LDFLAGS +=	-L${LOCALBASE}/lib \
		-L${X11BASE}/lib

USE_X11 =	Yes

CONFIGURE_ENV =	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}"

.include <bsd.port.mk>
