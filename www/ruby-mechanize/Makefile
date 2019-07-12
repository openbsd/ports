# $OpenBSD: Makefile,v 1.15 2019/07/12 20:51:04 sthen Exp $

COMMENT=		automate interaction with websites

DISTNAME=		mechanize-0.9.3
REVISION =		8
CATEGORIES=		www

HOMEPAGE=		http://docs.seattlerb.org/mechanize/

# BSD
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		textproc/ruby-nokogiri,${MODRUBY_FLAVOR}

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
