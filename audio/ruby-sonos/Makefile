# $OpenBSD: Makefile,v 1.4 2014/02/04 16:23:47 jasper Exp $

COMMENT =		control Sonos speakers with Ruby

DISTNAME =		sonos-0.3.5

CATEGORIES =		audio net

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-thor,${MODRUBY_FLAVOR} \
			www/ruby-httpclient,${MODRUBY_FLAVOR} \
			www/ruby-savon,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
