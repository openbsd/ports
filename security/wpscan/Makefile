# $OpenBSD: Makefile,v 1.1.1.1 2019/04/23 11:44:25 sebastia Exp $

COMMENT =	WordPress security scanner

DISTNAME =	wpscan-3.4.5
CATEGORIES =	security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# https://github.com/wpscanteam/wpscan/issues/1304
# Free for non-commercial use
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		security/ruby-cms_scanner,${MODRUBY_FLAVOR},>=0.0.41.4,<0.0.42


MODULES =	lang/ruby
MODRUBY_HANDLE_FLAVORS =	No
GEM_FLAGS =			--no-format-executable

CONFIGURE_STYLE =	ruby gem


.include <bsd.port.mk>
