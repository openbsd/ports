# $OpenBSD: Makefile,v 1.1.1.1 2006/11/14 19:09:32 espie Exp $

COMMENT=	"SAX2 writer"

MODULES=	cpan
DISTNAME=	XML-SAX-Writer-0.50
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-XML-SAX \
		::converters/p5-Text-Iconv \
		::textproc/p5-XML-NamespaceSupport \
		::textproc/p5-XML-Filter-BufferText

.include <bsd.port.mk>
