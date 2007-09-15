# $OpenBSD: Makefile,v 1.2 2007/09/15 20:59:41 merdely Exp $

COMMENT=	validate XML schema using SAX

MODULES=	cpan
DISTNAME=	XML-Validator-Schema-1.08
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-Tree-DAG_Node \
			::textproc/p5-XML-Filter-BufferText \
			::textproc/p5-XML-SAX

REGRESS_DEPENDS=	::textproc/p5-XML-Filter-ExceptionLocator \
			::textproc/p5-XML-SAX-Writer

.include <bsd.port.mk>
