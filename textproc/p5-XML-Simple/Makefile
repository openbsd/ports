# $OpenBSD: Makefile,v 1.22 2013/03/11 11:42:45 espie Exp $

COMMENT=	trivial perl API for reading/writing XML

MODULES=	cpan
DISTNAME=	XML-Simple-2.18
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

RUN_DEPENDS=	textproc/p5-XML-Parser>=2 \
		textproc/p5-XML-SAX>=0.16
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
