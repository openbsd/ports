# $OpenBSD: Makefile,v 1.7 2009/10/13 21:14:55 pirofti Exp $

COMMENT=		Ruby interface to gettext

DISTNAME=		gettext-2.0.4
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		devel

HOMEPAGE=		http://www.yotabanana.com/hiki/ruby-gettext.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=gettext/}

MODULES=		lang/ruby

RUN_DEPENDS=		:ruby-iconv->=1.8.4:lang/ruby,-iconv

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
