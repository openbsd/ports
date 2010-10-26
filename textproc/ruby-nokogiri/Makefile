# $OpenBSD: Makefile,v 1.6 2010/10/26 21:42:14 jeremy Exp $

COMMENT=		HTML, XML, SAX and Reader parser

VERSION=		1.3.2
DISTNAME=		nokogiri-${VERSION}
PKGNAME=		ruby-${DISTNAME}
REVISION =      	2
CATEGORIES=		textproc

HOMEPAGE=		http://nokogiri.rubyforge.org/nokogiri

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		xml2 exslt.>=9 xslt.>=3
LIB_DEPENDS=		::textproc/libxslt

BUILD_DEPENDS=		::devel/ruby-rake

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem ext

.include <bsd.port.mk>
