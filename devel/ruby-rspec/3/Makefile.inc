# $OpenBSD: Makefile.inc,v 1.5 2019/07/07 18:46:44 jasper Exp $

PORTROACH =		limit:^3

CATEGORIES ?=		devel

HOMEPAGE ?=		http://rspec.info/

# MIT
PERMIT_PACKAGE_CDROM ?=	Yes

MODULES ?=		lang/ruby

CONFIGURE_STYLE ?=	ruby gem

SUBST_VARS +=		MODRUBY_PKG_PREFIX
