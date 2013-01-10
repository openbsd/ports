# $OpenBSD: Makefile,v 1.15 2013/01/10 22:33:57 sthen Exp $

COMMENT=	system monitoring framework written in Ruby

DISTNAME=	god-0.7.3
FULLPKGNAME=	${DISTNAME}
REVISION=	10
CATEGORIES=	sysutils

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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

REGRESS_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}

do-regress:
	cd ${WRKSRC} && RUBYOPT=-rubygems ${MODRUBY_BIN_TESTRB} test/test_*.rb

.include <bsd.port.mk>
