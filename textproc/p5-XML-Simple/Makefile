# $OpenBSD: Makefile,v 1.23 2013/10/11 23:51:25 naddy Exp $

COMMENT=	trivial perl API for reading/writing XML

MODULES=	cpan
DISTNAME=	XML-Simple-2.18
REVISION=	0
CATEGORIES=	textproc

RUN_DEPENDS=	textproc/p5-XML-Parser>=2 \
		textproc/p5-XML-SAX>=0.16
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
