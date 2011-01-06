# $OpenBSD: Makefile,v 1.10 2011/01/06 04:24:24 jeremy Exp $

COMMENT=		HTML, XML, SAX and Reader parser

DISTNAME=		nokogiri-1.4.3.1
REVISION =		1
CATEGORIES=		textproc

HOMEPAGE=		http://nokogiri.rubyforge.org/nokogiri

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		xml2 exslt xslt
LIB_DEPENDS=		textproc/libxslt

BUILD_DEPENDS=		${MODRUBY_RAKE_DEPENDS}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
