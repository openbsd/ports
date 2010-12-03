# $OpenBSD: Makefile,v 1.7 2010/12/03 11:46:50 ajacoutot Exp $

COMMENT=	validate XML schema using SAX

MODULES=	cpan
DISTNAME=	XML-Validator-Schema-1.10
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		textproc/p5-XML-SAX
RUN_DEPENDS=		devel/p5-Tree-DAG_Node \
			textproc/p5-XML-Filter-BufferText \
			textproc/p5-XML-SAX

REGRESS_DEPENDS=	textproc/p5-XML-Filter-ExceptionLocator \
			textproc/p5-XML-SAX-Writer

.include <bsd.port.mk>
