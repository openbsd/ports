# $OpenBSD: Makefile,v 1.1.1.1 2007/01/02 14:50:20 jasper Exp $

COMMENT= 		"POE Filter for parsing XML"

DISTNAME=		POE-Filter-XML-0.32
CATEGORIES=		textproc

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-Filter-Template \
			::devel/p5-POE \
			:p5-XML-SAX->=0.14:textproc/p5-XML-SAX \
			::textproc/p5-XML-SAX-Expat-Incremental
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
