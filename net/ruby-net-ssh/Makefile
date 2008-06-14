# $OpenBSD: Makefile,v 1.6 2008/06/14 23:54:16 landry Exp $

COMMENT=	pure-ruby implementation of the SSH2 client protocol

DISTNAME=	net-ssh-2.0.1
PKGNAME=	ruby-${DISTNAME}p0
CATEGORIES=	net

# bsd/ruby
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=net-ssh/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-needle-1.3.0:devel/ruby-needle

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
