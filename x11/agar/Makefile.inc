# $OpenBSD: Makefile.inc,v 1.5 2021/03/01 07:01:02 bentley Exp $

V ?=			1.6.0
DISTNAME ?=		agar-$V

CATEGORIES ?=		x11

HOMEPAGE ?=		https://libagar.org/

# BSD
PERMIT_PACKAGE ?=	Yes

MASTER_SITES ?=		https://stable.hypertriton.com/agar/

CONFIGURE_STYLE ?=	simple

NO_TEST ?=		Yes
