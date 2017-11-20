# $OpenBSD: Makefile,v 1.14 2017/11/20 20:57:17 jeremy Exp $

COMMENT=		automate interaction with websites

DISTNAME=		mechanize-0.9.3
REVISION =		8
CATEGORIES=		www

HOMEPAGE=		http://docs.seattlerb.org/mechanize/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		textproc/ruby-nokogiri,${MODRUBY_FLAVOR}

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
