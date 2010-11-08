# $OpenBSD: Makefile,v 1.5 2010/11/08 23:28:56 jeremy Exp $

COMMENT=		automate interaction with websites

DISTNAME=		mechanize-0.9.3
REVISION =      	2
CATEGORIES=		www

HOMEPAGE=		http://mechanize.rubyforge.org/mechanize

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS} \
			${MODRUBY_RAKE_DEPENDS}
RUN_DEPENDS=		:${MODRUBY_PKG_PREFIX}-nokogiri-*:textproc/ruby-nokogiri,${FLAVOR}

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
