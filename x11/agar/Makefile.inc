# $OpenBSD: Makefile.inc,v 1.4 2020/11/09 21:48:25 cwen Exp $

V ?=			1.5.0
DISTNAME ?=		agar-$V

CATEGORIES ?=		x11

HOMEPAGE ?=		https://libagar.org/

# BSD
PERMIT_PACKAGE ?=	Yes

MASTER_SITES ?=		http://stable.hypertriton.com/agar/

CONFIGURE_STYLE ?=	simple

NO_TEST ?=		Yes
