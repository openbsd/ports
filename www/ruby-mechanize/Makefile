# $OpenBSD: Makefile,v 1.2 2010/09/23 22:30:29 jeremy Exp $

SHARED_ONLY=		Yes

COMMENT=		automate interaction with websites

VERSION=		0.9.3
DISTNAME=		mechanize-${VERSION}
PKGNAME=		ruby-${DISTNAME}
REVISION =      	0
CATEGORIES=		www

HOMEPAGE=		http://mechanize.rubyforge.org/mechanize

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=mechanize/}

WANTLIB=		c m 
LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS} 

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::devel/ruby-rake
RUN_DEPENDS=		::textproc/ruby-nokogiri

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
