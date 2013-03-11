# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:49 espie Exp $

COMMENT=		automate interaction with websites

DISTNAME=		mechanize-0.9.3
REVISION =		6
CATEGORIES=		www

HOMEPAGE=		http://mechanize.rubyforge.org/mechanize

# BSD
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS} \
			${MODRUBY_RAKE_DEPENDS}
RUN_DEPENDS=		textproc/ruby-nokogiri,${MODRUBY_FLAVOR}

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
