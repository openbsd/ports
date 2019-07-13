# $OpenBSD: Makefile.inc,v 1.2 2019/07/13 10:59:27 sthen Exp $

V ?=			1.5.0
DISTNAME ?=		agar-$V

CATEGORIES ?=		x11

HOMEPAGE ?=		http://libagar.org/

# BSD
PERMIT_PACKAGE ?=	Yes

MASTER_SITES ?=		http://stable.hypertriton.com/agar/

CONFIGURE_STYLE ?=	simple

NO_TEST ?=		Yes
