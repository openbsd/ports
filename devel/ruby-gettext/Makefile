# $OpenBSD: Makefile,v 1.9 2010/09/23 22:30:26 jeremy Exp $

COMMENT=		Ruby interface to gettext

DISTNAME=		gettext-2.0.4
PKGNAME=		ruby-${DISTNAME}
REVISION =      	1
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
RUN_DEPENDS=		${MODRUBY_ICONV_DEPENDS} \
			::devel/ruby-locale

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
