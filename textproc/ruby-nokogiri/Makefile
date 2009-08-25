# $OpenBSD: Makefile,v 1.2 2009/08/25 17:43:01 avsm Exp $

SHARED_ONLY=		Yes

COMMENT=		HTML, XML, SAX and Reader parser

VERSION=		1.3.2
DISTNAME=		nokogiri-${VERSION}
PKGNAME=		ruby-${DISTNAME}p0
CATEGORIES=		textproc

HOMEPAGE=		http://nokogiri.rubyforge.org/nokogiri

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=nokogiri/}

WANTLIB=		c m
LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS}  \
			xml2.>=10::textproc/libxml \
			exslt.>=9,xslt.>=3::textproc/libxslt

BUILD_DEPENDS=		::devel/ruby-rake

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
