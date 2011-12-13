# $OpenBSD: Makefile,v 1.15 2011/12/13 17:56:55 jeremy Exp $

COMMENT=		pure Ruby implementation of eRuby

DISTNAME=		erubis-2.7.0
CATEGORIES=		textproc

HOMEPAGE=		http://www.kuwata-lab.com/erubis/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

REGRESS_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS=	ruby
MODRUBY_REGRESS_ENV=	RUBYOPT=-rubygems
MODRUBY_REGRESS_TARGET=	test/test.rb

.include <bsd.port.mk>
