# $OpenBSD: Makefile,v 1.3 2020/06/24 18:53:28 sebastia Exp $

COMMENT =	gather information about processes

DISTNAME =	sys-proctable-1.2.5
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
