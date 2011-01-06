# $OpenBSD: Makefile,v 1.8 2011/01/06 04:24:25 jeremy Exp $

COMMENT=		automate interaction with websites

DISTNAME=		mechanize-0.9.3
REVISION =		4
CATEGORIES=		www

HOMEPAGE=		http://mechanize.rubyforge.org/mechanize

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS} \
			${MODRUBY_RAKE_DEPENDS}
RUN_DEPENDS=		textproc/ruby-nokogiri,${MODRUBY_FLAVOR}

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
