# $OpenBSD: Makefile,v 1.11 2016/03/31 15:24:32 okan Exp $

COMMENT= 	XML::RSS with XML::LibXML

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-RSS-LibXML-0.3105
CATEGORIES=	textproc

CONFIGURE_STYLE=modbuild

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-DateTime-Format-Mail \
		devel/p5-DateTime-Format-W3CDTF \
		devel/p5-Universal-require \
		textproc/p5-XML-LibXML

BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
