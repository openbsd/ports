# $OpenBSD: Makefile,v 1.1.1.1 2014/01/18 09:29:13 jasper Exp $

COMMENT =		gem to aid building Web Service Security

DISTNAME =		akami-1.2.0

HOMEPAGE =		https://github.com/savonrb/akami

CATEGORIES =		security

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/ruby-gyoku,${MODRUBY_FLAVOR} \
			textproc/ruby-nokogiri,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
