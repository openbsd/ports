# $OpenBSD: Makefile,v 1.20 2014/10/17 18:55:56 jasper Exp $

COMMENT =	unified Ruby API for popular databases

DISTNAME =	data_objects-0.10.14
REVISION =	0
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-addressable,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rspec3
MODRUBY_TEST_TARGET =	spec/*_spec.rb
MODRUBY_TEST_DEPENDS =	devel/ruby-rspec/3/its

.include <bsd.port.mk>
