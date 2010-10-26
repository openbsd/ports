# $OpenBSD: Makefile,v 1.4 2010/10/26 21:22:01 jeremy Exp $

COMMENT=		automate interaction with websites

VERSION=		0.9.3
DISTNAME=		mechanize-${VERSION}
PKGNAME=		ruby-${DISTNAME}
REVISION =      	1
CATEGORIES=		www

HOMEPAGE=		http://mechanize.rubyforge.org/mechanize

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::devel/ruby-rake
RUN_DEPENDS=		::textproc/ruby-nokogiri

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem
PKG_ARCH=		*

.include <bsd.port.mk>
