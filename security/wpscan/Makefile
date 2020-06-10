# $OpenBSD: Makefile,v 1.12 2020/06/10 19:50:49 sebastia Exp $

COMMENT =	WordPress security scanner

DISTNAME =	wpscan-3.8.2
CATEGORIES =	security

HOMEPAGE =	https://wpscan.org/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# https://github.com/wpscanteam/wpscan/issues/1304
# Free for non-commercial use
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		security/ruby-cms_scanner,${MODRUBY_FLAVOR},>=0.10.1,<0.11


MODULES =	lang/ruby
MODRUBY_HANDLE_FLAVORS =	No
GEM_FLAGS =			--no-format-executable

CONFIGURE_STYLE =	ruby gem


.include <bsd.port.mk>
