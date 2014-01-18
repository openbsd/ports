# $OpenBSD: Makefile,v 1.1.1.1 2014/01/18 09:22:41 jasper Exp $

COMMENT =		heavy meatl SOAP client

DISTNAME =		savon-2.3.3

HOMEPAGE =		http://savonrb.com/

CATEGORIES =		www

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		security/ruby-akami,${MODRUBY_FLAVOR}<1.3 \
			textproc/ruby-builder,${MODRUBY_FLAVOR} \
			textproc/ruby-nori,${MODRUBY_FLAVOR} \
			www/ruby-wasabi,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
