# $OpenBSD: Makefile,v 1.7 2013/03/11 11:42:45 espie Exp $

COMMENT=	SAX2 driver based on expat

MODULES=	cpan
DISTNAME=	XML-SAX-Expat-0.40
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-XML-SAX \
		textproc/p5-XML-Parser \
		textproc/p5-XML-NamespaceSupport

.include <bsd.port.mk>
