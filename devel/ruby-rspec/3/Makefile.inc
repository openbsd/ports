# $OpenBSD: Makefile.inc,v 1.6 2019/07/13 10:59:26 sthen Exp $

PORTROACH =		limit:^3

CATEGORIES ?=		devel

HOMEPAGE ?=		http://rspec.info/

# MIT
PERMIT_PACKAGE ?=	Yes

MODULES ?=		lang/ruby

CONFIGURE_STYLE ?=	ruby gem

SUBST_VARS +=		MODRUBY_PKG_PREFIX
