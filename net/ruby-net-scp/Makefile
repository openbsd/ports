# $OpenBSD: Makefile,v 1.10 2010/11/24 21:35:15 jeremy Exp $

COMMENT =		pure-Ruby implementation of the SCP protocol

DISTNAME =		net-scp-1.0.2
REVISION =		3
CATEGORIES =		net

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/ruby-net-ssh,${MODRUBY_FLAVOR}>=2.0.0

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}
do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems -Ilib test/test_all.rb

.include <bsd.port.mk>
