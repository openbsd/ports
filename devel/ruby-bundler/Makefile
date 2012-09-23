# $OpenBSD: Makefile,v 1.5 2012/09/23 16:57:33 jeremy Exp $

COMMENT=		ruby application dependency manager

DISTNAME=		bundler-1.0.21
REVISION =		0
CATEGORIES=		devel

HOMEPAGE=		http://gembundler.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

# hundreds of failures on ruby 1.8
# broken on ruby 1.9
REGRESS_DEPENDS =	textproc/ruby-ronn,${MODRUBY_FLAVOR}
MODRUBY_REGRESS=	rake rspec2

.include <bsd.port.mk>
