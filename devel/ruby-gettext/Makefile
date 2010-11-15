# $OpenBSD: Makefile,v 1.12 2010/11/15 19:46:08 espie Exp $

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

BUILD_DEPENDS=		devel/ruby-locale,${FLAVOR}
RUN_DEPENDS=		${MODRUBY_ICONV_DEPENDS} \
			devel/ruby-locale,${FLAVOR}

CONFIGURE_STYLE=	ruby gem

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
