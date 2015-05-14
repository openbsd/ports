# $OpenBSD: Makefile,v 1.23 2015/05/14 17:56:49 jasper Exp $

COMMENT =	pure-ruby implementation of the SSH2 client protocol

DISTNAME =	net-ssh-2.9.2
CATEGORIES =	net

# MIT
PERMIT_PACKAGE_CDROM =		yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-highline,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rake

TEST_DEPENDS =	devel/ruby-jeweler,${MODRUBY_FLAVOR} \
		devel/ruby-mocha,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
