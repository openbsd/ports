# $OpenBSD: Makefile,v 1.16 2015/10/10 08:32:04 kirby Exp $

COMMENT =		library for processing panoramic images
DISTNAME =		libpano13-2.9.19
# the following are useful for rc/betas and don't hurt otherwise:
PKGNAME =		${DISTNAME:S/_//}
WRKDIST =		${WRKDIR}/${DISTNAME:C/_.*//}

SHARED_LIBS +=		pano13               3.0

CATEGORIES =		graphics
HOMEPAGE =		http://panotools.sourceforge.net/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c jpeg png tiff z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=panotools/}

MODULES =		devel/cmake

LIB_DEPENDS =		graphics/jpeg \
			graphics/png \
			graphics/tiff

.include <bsd.port.mk>
