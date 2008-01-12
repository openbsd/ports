# $OpenBSD: Makefile,v 1.4 2008/01/12 14:57:16 bernd Exp $

COMMENT=	pure-ruby implementation of the SSH2 client protocol

DISTNAME=	net-ssh-1.1.2
PKGNAME=	ruby-${DISTNAME}
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
