# $OpenBSD: Makefile,v 1.17 2013/10/06 17:28:20 jeremy Exp $

COMMENT=	system monitoring framework written in Ruby

DISTNAME=	god-0.7.3
FULLPKGNAME=	${DISTNAME}
REVISION=	11
CATEGORIES=	sysutils

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

MODRUBY_REV =		1.9
MODRUBY_HANDLE_FLAVORS = No
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-hoe,${MODRUBY_FLAVOR}>=1.4.0

CONFIGURE_STYLE=ruby gem ext
GEM_FLAGS =	--no-format-executable

post-install:
	@mkdir -p ${PREFIX}/share/examples/god
	@cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/god/

TEST_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}

do-test:
	cd ${WRKSRC} && RUBYOPT=-rubygems ${MODRUBY_BIN_TESTRB} test/test_*.rb

.include <bsd.port.mk>
