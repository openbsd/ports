# $OpenBSD: Makefile,v 1.20 2015/07/18 21:07:40 jeremy Exp $

COMMENT=		Ruby interface to gettext

DISTNAME=		gettext-2.0.4
REVISION =		9
CATEGORIES=		devel

HOMEPAGE=		http://www.yotabanana.com/hiki/ruby-gettext.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		devel/ruby-locale,${MODRUBY_FLAVOR}
RUN_DEPENDS=		devel/ruby-locale,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST =	rake

.include <bsd.port.mk>
