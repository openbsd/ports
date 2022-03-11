NOT_FOR_ARCHS ?=	hppa

DISTNAME ?=	${OPENTTD_PROJECT}-$V-all
PKGNAME ?=	openttd-${OPENTTD_PROJECT}-$V

CATEGORIES +=	games

HOMEPAGE ?=	https://www.openttd.org/en/

MAINTAINER ?=	Anthony J. Bentley <anthony@anjbe.name>

# GPLv2 only
PERMIT_PACKAGE=	Yes

MASTER_SITES ?=	https://cdn.openttd.org/${OPENTTD_PROJECT}-releases/$V/

EXTRACT_SUFX ?=	.zip

DIST_SUBDIR ?=	openttd

NO_BUILD ?=	Yes
NO_TEST ?=	Yes

PKG_ARCH ?=	*

WRKDIST ?=	${WRKDIR}/${OPENTTD_PROJECT}-$V
