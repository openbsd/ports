# $OpenBSD: Makefile,v 1.12 2010/11/20 17:22:42 espie Exp $

COMMENT =	execute commands in parallel on multiple remote machines

DISTNAME =	capistrano-2.5.9
REVISION =	2
CATEGORIES =	sysutils

HOMEPAGE =	http://www.capify.org/

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/ruby-net-ssh,${FLAVOR} \
			net/ruby-net-sftp,${FLAVOR} \
			net/ruby-net-scp,${FLAVOR} \
			net/ruby-net-ssh-gateway,${FLAVOR} \
			devel/ruby-highline,${FLAVOR}

REGRESS_DEPENDS =	devel/ruby-mocha,${FLAVOR}

do-regress:
	@cd ${WRKBUILD}/test && ${RUBY} -I../lib \
		-e 'ARGV.each { |f| load f unless f =~ /^-/  }' *.rb

.include <bsd.port.mk>
