# $OpenBSD: Makefile,v 1.9 2010/09/23 22:30:28 jeremy Exp $

COMMENT =	execute commands in parallel on multiple remote machines

DISTNAME =	capistrano-2.5.9
PKGNAME =	ruby-${DISTNAME}
REVISION =	1
CATEGORIES =	sysutils

HOMEPAGE =	http://www.capify.org/

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=capistrano/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::net/ruby-net-ssh \
			::net/ruby-net-sftp \
			::net/ruby-net-scp \
			::net/ruby-net-ssh-gateway \
			::devel/ruby-highline

PKG_ARCH =		*

REGRESS_DEPENDS =	::devel/ruby-mocha

do-regress:
	@cd ${WRKBUILD}/test && ${RUBY} -I../lib \
		-e 'ARGV.each { |f| load f unless f =~ /^-/  }' *.rb

.include <bsd.port.mk>
