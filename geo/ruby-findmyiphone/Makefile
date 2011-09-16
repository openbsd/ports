# $OpenBSD: Makefile,v 1.9 2011/09/16 09:48:11 espie Exp $

COMMENT=		Ruby library to physically locate iPhones

DISTNAME=		findmyiphone-0.2.0
REVISION=		6
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
RUN_DEPENDS=		www/ruby-mechanize,${MODRUBY_FLAVOR} \
			converters/ruby-json,${MODRUBY_FLAVOR} \
			${MODRUBY_ICONV_DEPENDS}

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
