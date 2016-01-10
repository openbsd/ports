# $OpenBSD: Makefile,v 1.2 2016/01/10 20:39:37 jasper Exp $

COMMENT =		heavy meatl SOAP client

DISTNAME =		savon-2.11.1

HOMEPAGE =		http://savonrb.com/

CATEGORIES =		www

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		security/ruby-akami,${MODRUBY_FLAVOR}>=1.3 \
			textproc/ruby-builder,${MODRUBY_FLAVOR} \
			textproc/ruby-nori,${MODRUBY_FLAVOR}>=2.4 \
			www/ruby-wasabi,${MODRUBY_FLAVOR}>=3.5

.include <bsd.port.mk>
