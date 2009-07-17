# $OpenBSD: Makefile,v 1.4 2009/07/17 18:19:52 sthen Exp $

COMMENT =		identify control points from groups of overlapping images

DISTNAME =		autopano-sift-C-2.5.0
PKGNAME =		${DISTNAME:S/C/c/}p2

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
	@cd ${WRKSRC}; perl -i -pe 's/\r$$//' CMakeLists.txt APSCpp/APSCpp.c

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeModules/FindPNG.cmake

.include <bsd.port.mk>
