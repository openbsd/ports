DISTNAME ?=		unicode-${UNICODE_DATA_NAME}-${V}

CATEGORIES +=		textproc

HOMEPAGE ?=		https://www.unicode.org/${UNICODE_DATA_NAME}/

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD like (https://www.unicode.org/license.txt)
PERMIT_PACKAGE ?=	Yes

UNICODE_SITES =		https://www.unicode.org/Public
DIST_SUBDIR =		unicode/${UNICODE_DATA_NAME}/${V}

EXTRACT_SUFX ?=		.zip

NO_BUILD ?=		Yes
NO_TEST ?=		Yes
PKG_ARCH ?=		*

WRKDIST ?=		${WRKDIR}
