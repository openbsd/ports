# $OpenBSD: Makefile.inc,v 1.1 2013/03/12 07:33:14 jasper Exp $

PKGNAME ?=	erl-${DISTNAME}

CATEGORIES +=	sysutils/erchef

MASTER_SITES ?=	http://distfiles.nl/

MODULES ?=	lang/erlang

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

ALL_TARGET ?=	compile
