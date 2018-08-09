# $OpenBSD: Makefile,v 1.5 2018/08/09 22:43:47 jeremy Exp $

COMMENT =	ruby DSL around a subset of XPath 1.0

DISTNAME =	xpath-3.1.0
CATEGORIES =	www

HOMEPAGE=	https://github.com/jnicklas/xpath

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	textproc/ruby-nokogiri,${MODRUBY_FLAVOR}>=1.8,<2

# Tests require gems not in ports

.include <bsd.port.mk>
