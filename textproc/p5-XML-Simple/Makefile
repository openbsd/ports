# $OpenBSD: Makefile,v 1.27 2017/05/11 15:46:33 benoit Exp $

COMMENT=	trivial perl API for reading/writing XML

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	XML-Simple-2.24
CATEGORIES=	textproc

RUN_DEPENDS=	textproc/p5-XML-Parser>=2 \
		textproc/p5-XML-SAX>=0.16 \
		textproc/p5-XML-SAX-Expat
BUILD_DEPENDS=	${RUN_DEPENDS}

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
