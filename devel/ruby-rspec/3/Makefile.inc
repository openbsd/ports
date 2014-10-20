# $OpenBSD: Makefile.inc,v 1.3 2014/10/20 07:52:19 jasper Exp $

PORTROACH =		limit:^3

CATEGORIES ?=		devel

HOMEPAGE ?=		http://rspec.info/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM ?=	Yes

MODULES ?=		lang/ruby

CONFIGURE_STYLE ?=	ruby gem
