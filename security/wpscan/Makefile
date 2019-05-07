# $OpenBSD: Makefile,v 1.3 2019/05/07 13:57:40 sebastia Exp $

COMMENT =	WordPress security scanner

DISTNAME =	wpscan-3.5.3
CATEGORIES =	security

HOMEPAGE =	https://wpscan.org/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# https://github.com/wpscanteam/wpscan/issues/1304
# Free for non-commercial use
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		security/ruby-cms_scanner,${MODRUBY_FLAVOR},>=0.5.1,<0.6


MODULES =	lang/ruby
MODRUBY_HANDLE_FLAVORS =	No
GEM_FLAGS =			--no-format-executable

CONFIGURE_STYLE =	ruby gem


.include <bsd.port.mk>
