# $OpenBSD: Makefile,v 1.10 2011/04/25 18:12:31 jeremy Exp $

COMMENT=	a ruby timer based on SIGALRM

DISTNAME=	SystemTimer-1.2.3
PKGNAME=	${DISTNAME:L}
CATEGORIES=	devel

# ruby or gpl
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

# Regress tests not enabled, as they depend on ruby-dust,
# not yet imported.
REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/ruby-mocha,${MODRUBY_FLAVOR}

#do-regress:
#	cd ${WRKSRC} && ${RUBY} -rubygems test/all_tests.rb

.include <bsd.port.mk>
