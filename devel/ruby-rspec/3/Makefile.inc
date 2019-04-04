# $OpenBSD: Makefile.inc,v 1.4 2019/04/04 06:21:04 naddy Exp $

PORTROACH =		limit:^3

CATEGORIES ?=		devel

HOMEPAGE ?=		http://rspec.info/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM ?=	Yes

MODULES ?=		lang/ruby

CONFIGURE_STYLE ?=	ruby gem

SUBST_VARS +=		MODRUBY_PKG_PREFIX
