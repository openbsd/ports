# $OpenBSD: Makefile,v 1.3 2016/11/02 17:01:31 jeremy Exp $

COMMENT =		simple WSDL parser

DISTNAME =		wasabi-3.5.0
REVISION =		0

HOMEPAGE =		https://github.com/savonrb/wasabi

CATEGORIES =		www

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/ruby-nokogiri,${MODRUBY_FLAVOR}>=1.4.2 \
			www/ruby-httpi,${MODRUBY_FLAVOR}>=2.0,<3.0

.include <bsd.port.mk>
