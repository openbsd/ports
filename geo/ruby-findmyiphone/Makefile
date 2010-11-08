# $OpenBSD: Makefile,v 1.5 2010/11/08 23:28:54 jeremy Exp $

COMMENT=		Ruby library to physically locate iPhones

DISTNAME=		findmyiphone-0.2.0
REVISION=		3
CATEGORIES=		geo

HOMEPAGE=		http://github.com/mattb/findmyiphone

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:${MODRUBY_PKG_PREFIX}-mechanize-*:www/ruby-mechanize,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-json-*:converters/ruby-json,${FLAVOR} \
			${MODRUBY_ICONV_DEPENDS}

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
