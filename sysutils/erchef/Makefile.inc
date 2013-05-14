# $OpenBSD: Makefile.inc,v 1.2 2013/05/14 07:17:28 jasper Exp $

PKGNAME ?=	erl-${DISTNAME}

CATEGORIES +=	sysutils

MASTER_SITES ?=	http://distfiles.nl/

MODULES ?=	lang/erlang

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

ALL_TARGET ?=	compile
