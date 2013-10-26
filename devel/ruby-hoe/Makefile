# $OpenBSD: Makefile,v 1.22 2013/10/26 23:55:35 jeremy Exp $

COMMENT=	simple rake/rubygems helper for project Rakefiles

DISTNAME=	hoe-2.12.3
REVISION =	1
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	${MODRUBY_RAKE_DEPENDS}

CONFIGURE_STYLE=ruby gem

# Regress doesn't work in ruby 1.8, because it ships with
# an old version of rdoc.
TEST_DEPENDS =	math/graphviz
MODRUBY_TEST =	rake

.include <bsd.port.mk>
