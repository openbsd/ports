# $OpenBSD: Makefile,v 1.7 2010/10/06 20:06:23 jeremy Exp $

COMMENT =		pure-Ruby implementation of the SCP protocol

DISTNAME =		net-scp-1.0.2
PKGNAME =		ruby-${DISTNAME}
REVISION =		1
CATEGORIES =		net

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:ruby-net-ssh->=2.0.0:net/ruby-net-ssh

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	:ruby-mocha-*:devel/ruby-mocha
do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems -Ilib test/test_all.rb

.include <bsd.port.mk>
