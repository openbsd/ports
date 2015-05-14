# $OpenBSD: Makefile,v 1.1.1.1 2015/05/14 17:53:57 jasper Exp $

COMMENT =		toolkit for deploying code and assets to servers

DISTNAME =		sshkit-1.7.1
CATEGORIES =		net

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-colorize,${MODRUBY_FLAVOR} \
			net/ruby-net-scp,${MODRUBY_FLAVOR} \
			net/ruby-net-ssh,${MODRUBY_FLAVOR}

# needs unported unindent gem
#MODRUBY_TEST =		rake

.include <bsd.port.mk>
