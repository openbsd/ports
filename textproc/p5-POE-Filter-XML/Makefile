# $OpenBSD: Makefile,v 1.6 2009/09/03 07:37:21 jasper Exp $

COMMENT= 		POE Filter for parsing XML

DISTNAME=		POE-Filter-XML-0.38
CATEGORIES=		textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-POE \
			:p5-XML-SAX->=0.16:textproc/p5-XML-SAX \
			::textproc/p5-XML-LibXML \
			::textproc/p5-XML-SAX-Expat-Incremental

.include <bsd.port.mk>
