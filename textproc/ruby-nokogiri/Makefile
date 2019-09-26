# $OpenBSD: Makefile,v 1.35 2019/09/26 06:35:09 sebastia Exp $

COMMENT=		HTML, XML, SAX and Reader parser

DISTNAME=		nokogiri-1.10.4
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
