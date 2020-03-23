# $OpenBSD: Makefile,v 1.36 2020/03/23 21:33:38 sebastia Exp $

COMMENT=		HTML, XML, SAX and Reader parser

DISTNAME=		nokogiri-1.10.8
CATEGORIES=		textproc

HOMEPAGE=		http://nokogiri.org/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=		exslt xml2 xslt gcrypt gpg-error
LIB_DEPENDS=		textproc/libxslt

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

CONFIGURE_ARGS=		--use-system-libraries \
			--with-xml2-include=${LOCALBASE}/include/libxml2/

.include <bsd.port.mk>
