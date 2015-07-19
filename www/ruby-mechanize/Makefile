# $OpenBSD: Makefile,v 1.13 2015/07/19 02:10:31 jeremy Exp $

COMMENT=		automate interaction with websites

DISTNAME=		mechanize-0.9.3
REVISION =		7
CATEGORIES=		www

HOMEPAGE=		http://mechanize.rubyforge.org/mechanize

# BSD
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		textproc/ruby-nokogiri,${MODRUBY_FLAVOR}

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
