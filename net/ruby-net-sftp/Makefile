# $OpenBSD: Makefile,v 1.12 2010/11/19 22:31:38 espie Exp $

COMMENT =	pure-ruby implementation of the SFTP client protocol

DISTNAME =	net-sftp-2.0.2
REVISION =	1
CATEGORIES =	net

# bsd/ruby
PERMIT_PACKAGE_CDROM =		yes
PERMIT_PACKAGE_FTP =		yes
PERMIT_DISTFILES_CDROM =	yes
PERMIT_DISTFILES_FTP =		yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-net-ssh,${FLAVOR}>=2.0.0

CONFIGURE_STYLE = ruby gem

REGRESS_DEPENDS =	devel/ruby-mocha,${FLAVOR}
do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems -Ilib test/test_all.rb

.include <bsd.port.mk>
