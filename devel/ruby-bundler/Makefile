# $OpenBSD: Makefile,v 1.1.1.1 2010/12/08 21:24:41 jeremy Exp $

COMMENT=		ruby application dependency manager

DISTNAME=		bundler-1.0.7
CATEGORIES=		devel

HOMEPAGE=		http://gembundler.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

# Currently requires a git checkout to run the specs
MODRUBY_REGRESS=	rake rspec

.include <bsd.port.mk>
