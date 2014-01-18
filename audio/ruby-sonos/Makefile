# $OpenBSD: Makefile,v 1.1.1.1 2014/01/18 09:32:32 jasper Exp $

COMMENT=		control Sonos speakers with Ruby

DISTNAME=		sonos-0.3.4

CATEGORIES=		audio net

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-thor,${MODRUBY_FLAVOR} \
			www/ruby-httpclient,${MODRUBY_FLAVOR} \
			www/ruby-savon,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
