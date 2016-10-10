# $OpenBSD: Makefile.inc,v 1.1.1.1 2016/10/10 09:33:17 bentley Exp $

V ?=			1.5.0
DISTNAME ?=		agar-$V

CATEGORIES ?=		x11

HOMEPAGE ?=		http://libagar.org/

# BSD
PERMIT_PACKAGE_CDROM ?=	Yes

MASTER_SITES ?=		http://stable.hypertriton.com/agar/

CONFIGURE_STYLE ?=	simple

NO_TEST ?=		Yes
