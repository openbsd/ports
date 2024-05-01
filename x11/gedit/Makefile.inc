DIST_SUBDIR=		gedit

DISTNAME ?=		${LIBGEDIT_PROJECT}-${LIBGEDIT_VERSION}

CATEGORIES +=		x11 x11/gedit editors

HOMEPAGE ?=		https://gedit-technology.github.io/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# XXX
PERMIT_PACKAGE ?=	Yes

.if (defined(LIBGEDIT_PROJECT) && defined(LIBGEDIT_VERSION))
SITES ?=		https://github.com/gedit-technology/${LIBGEDIT_PROJECT}/releases/download/${LIBGEDIT_VERSION}/
EXTRACT_SUFX ?=		.tar.xz
.endif

DEBUG_PACKAGES ?=	${BUILD_PACKAGES}
