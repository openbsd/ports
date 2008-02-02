# $OpenBSD: Makefile,v 1.1.1.1 2008/02/02 11:42:15 bernd Exp $

COMMENT=	execute commands in parallel on multiple remote machines

DISTNAME=	capistrano-2.1.0
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	sysutils

HOMEPAGE=	http://www.capify.org/

MAINTAINER=	Bernd Ahlers <bernd@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=capistrano/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::net/ruby-net-ssh \
			::net/ruby-net-sftp \
			::devel/ruby-highline \
			::devel/ruby-fastthread

PKG_ARCH=		*

REGRESS_DEPENDS=	::devel/ruby-mocha

do-regress:
	@cd ${WRKBUILD}/test && ${RUBY} \
		-e 'ARGV.each { |f| load f unless f =~ /^-/  }' *.rb

.include <bsd.port.mk>
