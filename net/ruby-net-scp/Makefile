# $OpenBSD: Makefile,v 1.18 2019/07/12 20:48:48 sthen Exp $

COMMENT =		pure-Ruby implementation of the SCP protocol

DISTNAME =		net-scp-1.2.1
CATEGORIES =		net

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/ruby-net-ssh,${MODRUBY_FLAVOR}>=2.6.5

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rake

TEST_DEPENDS =		devel/ruby-jeweler,${MODRUBY_FLAVOR} \
			devel/ruby-mocha,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
