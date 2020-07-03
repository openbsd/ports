# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:54 sthen Exp $

COMMENT=	validate XML schema using SAX

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-Validator-Schema-1.10
REVISION=	2
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=		textproc/p5-XML-SAX
RUN_DEPENDS=		devel/p5-Tree-DAG_Node \
			textproc/p5-XML-Filter-BufferText \
			textproc/p5-XML-SAX

TEST_DEPENDS=	textproc/p5-XML-Filter-ExceptionLocator \
			textproc/p5-XML-SAX-Writer

.include <bsd.port.mk>
