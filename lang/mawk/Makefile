COMMENT=	fast POSIX-compliant awk

DATE =		20240827
DISTNAME=	mawk-1.3.4-${DATE}
PKGNAME=	mawk-1.3.4.${DATE}
REVISION =	0

CATEGORIES=	lang

HOMEPAGE=	https://invisible-island.net/mawk/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB=	c m

SITES=		https://invisible-mirror.net/archives/mawk/ \
		ftp://ftp.invisible-island.net/mawk/
EXTRACT_SUFX=	.tgz

DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_STYLE= gnu
# Our default random initialization is stronger than
# what mawk does (seeds with Unix epoch).
CONFIGURE_ARGS=	--disable-init-srand

.include <bsd.port.mk>
