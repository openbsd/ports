# $OpenBSD: Makefile,v 1.3 2014/10/17 18:35:32 jasper Exp $

COMMENT =	protects rack apps against typical web attacks

DISTNAME =	rack-protection-1.5.3
CATEGORIES =	www

HOMEPAGE =	https://github.com/rkh/rack-protection

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-rack,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

# https://github.com/rkh/rack-protection/pull/87
#MODRUBY_TEST =		rspec2
#TEST_DEPENDS =		www/ruby-rack-test,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
