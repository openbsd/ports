# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:27 espie Exp $

COMMENT=		ruby application dependency manager

DISTNAME=		bundler-1.0.21
REVISION =		0
CATEGORIES=		devel

HOMEPAGE=		http://gembundler.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

# hundreds of failures on ruby 1.8
# broken on ruby 1.9
TEST_DEPENDS =	textproc/ruby-ronn,${MODRUBY_FLAVOR}
MODRUBY_TEST=	rake rspec2

.include <bsd.port.mk>
