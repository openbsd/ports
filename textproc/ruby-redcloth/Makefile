# $OpenBSD: Makefile,v 1.2 2008/06/14 23:57:19 landry Exp $

COMMENT=	module for using Textile in Ruby

DISTNAME=	RedCloth-3.0.4
PKGNAME=	ruby-${DISTNAME:L}p0
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
