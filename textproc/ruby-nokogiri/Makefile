# $OpenBSD: Makefile,v 1.5 2010/09/28 20:12:18 jeremy Exp $

SHARED_ONLY=		Yes

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

WANTLIB=		c m xml2
LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS}  \
			exslt.>=9,xslt.>=3::textproc/libxslt

BUILD_DEPENDS=		::devel/ruby-rake

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
