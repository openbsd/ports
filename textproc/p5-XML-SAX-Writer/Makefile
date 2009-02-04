# $OpenBSD: Makefile,v 1.3 2009/02/04 12:56:38 jasper Exp $

COMMENT=	SAX2 writer

MODULES=	cpan
DISTNAME=	XML-SAX-Writer-0.52
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::converters/p5-Text-Iconv \
		::textproc/p5-XML-SAX \
		::textproc/p5-XML-NamespaceSupport \
		::textproc/p5-XML-Filter-BufferText

.include <bsd.port.mk>
