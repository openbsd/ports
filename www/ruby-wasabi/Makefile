# $OpenBSD: Makefile,v 1.1.1.1 2014/01/18 09:23:24 jasper Exp $

COMMENT =		simple WSDL parser

DISTNAME =		wasabi-3.2.3

HOMEPAGE =		https://github.com/savonrb/wasabi

CATEGORIES =		www

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		mail/ruby-mime-types,${MODRUBY_FLAVOR}<2.0 \
			textproc/ruby-nokogiri,${MODRUBY_FLAVOR} \
			www/ruby-httpi,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
