# $OpenBSD: Makefile,v 1.7 2013/03/11 11:42:45 espie Exp $

COMMENT= 	XML::RSS with XML::LibXML

MODULES=	cpan
DISTNAME=	XML-RSS-LibXML-0.3002
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

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
