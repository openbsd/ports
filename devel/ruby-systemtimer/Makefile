# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:30 espie Exp $

COMMENT=	a ruby timer based on SIGALRM

DISTNAME=	SystemTimer-1.2.3
PKGNAME=	${DISTNAME:L}
REVISION=	1
CATEGORIES=	devel

# ruby or gpl
PERMIT_PACKAGE_CDROM=	yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

FLAVORS=	ruby18
FLAVOR=		ruby18

# Regress tests not enabled, as they depend on ruby-dust,
# which is dead upstream and won't be imported.  You can
# manually install the gem if you want to run the regress
# tests.
#TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
#			devel/ruby-mocha,${MODRUBY_FLAVOR}
#MODRUBY_TEST =	ruby
#MODRUBY_TEST_TARGET = -rubygems test/all_tests.rb

.include <bsd.port.mk>
