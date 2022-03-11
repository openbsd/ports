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
