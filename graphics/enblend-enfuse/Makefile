# $OpenBSD: Makefile,v 1.1.1.1 2009/04/19 11:14:37 sthen Exp $

VMEM_WARNING =	Yes
# and I'm not joking!

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
