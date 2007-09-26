# $OpenBSD: Makefile,v 1.1.1.1 2007/09/26 17:04:20 bernd Exp $

COMMENT=	module for using Textile in Ruby

DISTNAME=	RedCloth-3.0.4
PKGNAME=	ruby-${DISTNAME:L}
CATEGORIES=	textproc

HOMEPAGE=	http://www.whytheluckystiff.net/ruby/redcloth/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=redcloth/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
