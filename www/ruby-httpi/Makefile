# $OpenBSD: Makefile,v 1.3 2016/01/10 20:39:03 jasper Exp $

COMMENT =		common interface for Ruby's HTTP libraries

DISTNAME =		httpi-2.4.1

HOMEPAGE =		http://httpirb.com/

CATEGORIES =		www

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-ntlm,${MODRUBY_FLAVOR}<0.4.0 \
			www/ruby-rack,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
