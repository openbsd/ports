# $OpenBSD: Makefile.inc,v 1.3 2020/06/22 09:43:45 cwen Exp $

BROKEN-powerpc =	agartest causes system freezes

V ?=			1.5.0
DISTNAME ?=		agar-$V

CATEGORIES ?=		x11

HOMEPAGE ?=		https://libagar.org/

# BSD
PERMIT_PACKAGE ?=	Yes

MASTER_SITES ?=		http://stable.hypertriton.com/agar/

CONFIGURE_STYLE ?=	simple

NO_TEST ?=		Yes
