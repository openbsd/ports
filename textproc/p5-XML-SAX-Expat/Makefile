# $OpenBSD: Makefile,v 1.1.1.1 2006/11/14 19:09:03 espie Exp $

COMMENT=	"SAX2 driver based on expat"

MODULES=	cpan
DISTNAME=	XML-SAX-Expat-0.37
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-XML-SAX \
		::textproc/p5-XML-Parser \
		::textproc/p5-XML-NamespaceSupport

.include <bsd.port.mk>
