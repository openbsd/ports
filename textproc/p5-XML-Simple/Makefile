# $OpenBSD: Makefile,v 1.26 2016/03/20 19:57:12 naddy Exp $

COMMENT=	trivial perl API for reading/writing XML

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	XML-Simple-2.22
CATEGORIES=	textproc

RUN_DEPENDS=	textproc/p5-XML-Parser>=2 \
		textproc/p5-XML-SAX>=0.16 \
		textproc/p5-XML-SAX-Expat
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
