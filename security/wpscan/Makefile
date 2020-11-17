# $OpenBSD: Makefile,v 1.16 2020/11/17 03:19:38 jeremy Exp $

COMMENT =	WordPress security scanner

DISTNAME =	wpscan-3.8.10
CATEGORIES =	security
REVISION =	0

HOMEPAGE =	https://wpscan.org/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# https://github.com/wpscanteam/wpscan/issues/1304
# Free for non-commercial use
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		security/ruby-cms_scanner,${MODRUBY_FLAVOR},>=0.12.1,<0.13


MODULES =	lang/ruby
MODRUBY_HANDLE_FLAVORS =	No
GEM_FLAGS =			--no-format-executable

CONFIGURE_STYLE =	ruby gem


.include <bsd.port.mk>
