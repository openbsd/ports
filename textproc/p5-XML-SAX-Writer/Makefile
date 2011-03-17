# $OpenBSD: Makefile,v 1.7 2011/03/17 12:22:18 jasper Exp $

COMMENT=	SAX2 writer

MODULES=	cpan
DISTNAME=	XML-SAX-Writer-0.53
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	textproc/p5-XML-SAX \
		textproc/p5-XML-NamespaceSupport \
		textproc/p5-XML-Filter-BufferText

.include <bsd.port.mk>
