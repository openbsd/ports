# $OpenBSD: Makefile,v 1.11 2020/04/21 13:12:22 sebastia Exp $

COMMENT =	WordPress security scanner

DISTNAME =	wpscan-3.8.1
CATEGORIES =	security

HOMEPAGE =	https://wpscan.org/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# https://github.com/wpscanteam/wpscan/issues/1304
# Free for non-commercial use
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		security/ruby-cms_scanner,${MODRUBY_FLAVOR},>=0.10.0,<0.11


MODULES =	lang/ruby
MODRUBY_HANDLE_FLAVORS =	No
GEM_FLAGS =			--no-format-executable

CONFIGURE_STYLE =	ruby gem


.include <bsd.port.mk>
