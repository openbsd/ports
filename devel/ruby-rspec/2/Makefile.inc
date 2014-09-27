# $OpenBSD: Makefile.inc,v 1.2 2014/09/27 17:47:54 jasper Exp $

PORTROACH =		limit:^2

CATEGORIES ?=		devel

HOMEPAGE ?=		http://rspec.info/

# MIT
PERMIT_PACKAGE_CDROM ?=	Yes

MODULES ?=		lang/ruby

CONFIGURE_STYLE ?=	ruby gem
