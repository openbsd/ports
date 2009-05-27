# $OpenBSD: Makefile,v 1.3 2009/05/27 12:59:45 sthen Exp $

COMMENT =		identify control points from groups of overlapping images

DISTNAME =		autopano-sift-C-2.5.0
PKGNAME =		${DISTNAME:S/C/c/}p1

CATEGORIES =		graphics

HOMEPAGE =		http://hugin.sourceforge.net/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	US patent, see README
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =US patent, see README
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c m stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=hugin/}

LIB_DEPENDS =		jpeg::graphics/jpeg \
			pano13::graphics/libpano13 \
			png::graphics/png \
			tiff::graphics/tiff \
			xml2::textproc/libxml

MODULES +=		devel/cmake
CONFIGURE_STYLE =	cmake

NO_REGRESS =		Yes

# dos line-endings in file needing patch
post-extract:
	@perl -i -pe 's/\r$$//' ${WRKSRC}/CMakeLists.txt

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeModules/FindPNG.cmake

.include <bsd.port.mk>
