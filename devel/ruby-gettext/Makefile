# $OpenBSD: Makefile,v 1.19 2014/10/11 19:54:46 jeremy Exp $

COMMENT=		Ruby interface to gettext

DISTNAME=		gettext-2.0.4
REVISION =		8
CATEGORIES=		devel

HOMEPAGE=		http://www.yotabanana.com/hiki/ruby-gettext.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		devel/ruby-locale,${MODRUBY_FLAVOR}
RUN_DEPENDS=		${MODRUBY_ICONV_DEPENDS} \
			devel/ruby-locale,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST =	rake

.include <bsd.port.mk>
