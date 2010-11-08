# $OpenBSD: Makefile,v 1.11 2010/11/08 23:28:54 jeremy Exp $

COMMENT=		Ruby interface to gettext

DISTNAME=		gettext-2.0.4
REVISION =      	2
CATEGORIES=		devel

HOMEPAGE=		http://www.yotabanana.com/hiki/ruby-gettext.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		:${MODRUBY_PKG_PREFIX}-locale-*:devel/ruby-locale,${FLAVOR}
RUN_DEPENDS=		${MODRUBY_ICONV_DEPENDS} \
			:${MODRUBY_PKG_PREFIX}-locale-*:devel/ruby-locale,${FLAVOR}

CONFIGURE_STYLE=	ruby gem

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
