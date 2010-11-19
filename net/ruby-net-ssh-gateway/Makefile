# $OpenBSD: Makefile,v 1.7 2010/11/19 22:31:38 espie Exp $

COMMENT =		library for programmatically tunneling connections

DISTNAME =		net-ssh-gateway-1.0.1
REVISION =		1
CATEGORIES =		net

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/ruby-net-ssh,${FLAVOR}>=2.0.0

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS=	devel/ruby-mocha,${FLAVOR}

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems -Ilib/ test/gateway_test.rb

.include <bsd.port.mk>
