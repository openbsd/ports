# $OpenBSD: Makefile,v 1.2 2020/03/22 22:09:26 sebastia Exp $

COMMENT =	gather information about processes

DISTNAME =	sys-proctable-1.2.3
CATEGORIES =	devel
HOMEPAGE =	https://github.com/djberg96/sys-proctable
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-ffi,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
