# $OpenBSD: Makefile,v 1.7 2014/10/11 19:54:46 jeremy Exp $

COMMENT =		control Sonos speakers with Ruby

DISTNAME =		sonos-0.3.6
REVISION =		0

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
