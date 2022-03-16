DISTNAME ?=		noto-${NOTO_PROJECT}-${V:S/-//g}

CATEGORIES ?=		fonts

HOMEPAGE ?=		https://fonts.google.com/noto

# SIL OFL 1.1
PERMIT_PACKAGE ?=	Yes

MAINTAINER ?=		Anthony J. Bentley <anthony@anjbe.name>

GH_ACCOUNT ?=		googlefonts
GH_PROJECT ?=		noto-${NOTO_PROJECT}

NO_BUILD ?=		Yes
NO_TEST ?=		Yes
PKG_ARCH ?=		*

NOTO_INSTALLDIR ?=	${PREFIX}/share/fonts/noto
