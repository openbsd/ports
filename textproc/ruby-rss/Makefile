# $OpenBSD: Makefile,v 1.6 2012/09/23 17:09:11 jeremy Exp $

COMMENT=	improved ruby RSS and Atom parser

DISTNAME=	rss-0.2.4
PKGNAME=	ruby19-${DISTNAME}
REVISION=	3
CATEGORIES=	textproc devel

# ruby
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	http://www.cozmixng.org/~kou/download/

MODULES=	lang/ruby
MODRUBY_REV =	1.9

CONFIGURE_STYLE=ruby setup

PKG_ARCH=	*

.include <bsd.port.mk>
