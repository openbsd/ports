# $OpenBSD: Makefile,v 1.8 2009/10/19 17:51:40 bernd Exp $

COMMENT=		Ruby interface to gettext

DISTNAME=		gettext-2.0.4
PKGNAME=		ruby-${DISTNAME}p0
CATEGORIES=		devel

HOMEPAGE=		http://www.yotabanana.com/hiki/ruby-gettext.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=gettext/}

MODULES=		lang/ruby

BUILD_DEPENDS=		::devel/ruby-locale
RUN_DEPENDS=		:ruby-iconv->=1.8.4:lang/ruby,-iconv \
			::devel/ruby-locale

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
