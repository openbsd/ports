# $OpenBSD: Makefile,v 1.3 2009/08/26 15:34:17 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		HTML, XML, SAX and Reader parser

VERSION=		1.3.2
DISTNAME=		nokogiri-${VERSION}
PKGNAME=		ruby-${DISTNAME}p1
CATEGORIES=		textproc

HOMEPAGE=		http://nokogiri.rubyforge.org/nokogiri

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=nokogiri/}

WANTLIB=		c m xml2
LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS}  \
			exslt.>=9,xslt.>=3::textproc/libxslt

BUILD_DEPENDS=		::devel/ruby-rake

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
