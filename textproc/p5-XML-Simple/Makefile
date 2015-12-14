# $OpenBSD: Makefile,v 1.25 2015/12/14 07:13:55 benoit Exp $

COMMENT=	trivial perl API for reading/writing XML

MODULES=	cpan
DISTNAME =	XML-Simple-2.22
CATEGORIES=	textproc

RUN_DEPENDS=	textproc/p5-XML-Parser>=2 \
		textproc/p5-XML-SAX>=0.16 \
		textproc/p5-XML-SAX-Expat
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
