# $OpenBSD: Makefile,v 1.1.1.1 2009/04/19 11:14:41 sthen Exp $

COMMENT =		identify control points from groups of overlapping images

DISTNAME =		autopano-sift-C-2.5.0
PKGNAME =		${DISTNAME:S/C/c/}

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
			png::graphics/png \
			tiff::graphics/tiff \
			xml2::textproc/libxml

MODULES +=		devel/cmake
CONFIGURE_STYLE =	cmake

NO_REGRESS =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeModules/FindPNG.cmake

.include <bsd.port.mk>
