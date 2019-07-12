# $OpenBSD: Makefile.inc,v 1.2 2019/07/12 20:46:22 sthen Exp $

NOT_FOR_ARCHS ?=	hppa

DISTNAME ?=	${OPENTTD_PROJECT}-$V
PKGNAME ?=	openttd-${OPENTTD_PROJECT}-$V

CATEGORIES +=	games

HOMEPAGE ?=	https://www.openttd.org/en/

MAINTAINER ?=	Anthony J. Bentley <anthony@anjbe.name>

# GPLv2 only
PERMIT_PACKAGE=	Yes

MASTER_SITES ?=	https://bundles.openttdcoop.org/${OPENTTD_PROJECT}/releases/$V/

EXTRACT_SUFX ?=	.zip

DIST_SUBDIR ?=	openttd

NO_BUILD ?=	Yes
NO_TEST ?=	Yes

PKG_ARCH ?=	*
