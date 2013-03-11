# $OpenBSD: Makefile,v 1.16 2013/03/11 11:41:30 espie Exp $

COMMENT=	system monitoring framework written in Ruby

DISTNAME=	god-0.7.3
FULLPKGNAME=	${DISTNAME}
REVISION=	10
CATEGORIES=	sysutils

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

MODRUBY_REV =		1.9
MODRUBY_HANDLE_FLAVORS = No
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-hoe>=1.4.0

CONFIGURE_STYLE=ruby gem ext
GEM_FLAGS =	--no-format-executable

post-install:
	@mkdir -p ${PREFIX}/share/examples/god
	@cp -r ${WRKSRC}/examples/* ${PREFIX}/share/examples/god/

TEST_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}

do-test:
	cd ${WRKSRC} && RUBYOPT=-rubygems ${MODRUBY_BIN_TESTRB} test/test_*.rb

.include <bsd.port.mk>
