# $OpenBSD: Makefile,v 1.5 2016/09/05 09:00:07 jasper Exp $

COMMENT =	data backend for Hiera to return whole files

DISTNAME =	hiera-file-1.1.1
CATEGORIES =	databases

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
MODRUBY_REV=		2.2

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-hiera,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
