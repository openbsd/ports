# $OpenBSD: Makefile,v 1.7 2010/10/19 07:54:23 espie Exp $

COMMENT= 		POE Filter for parsing XML

DISTNAME=		POE-Filter-XML-0.38
CATEGORIES=		textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		::devel/p5-POE \
			:p5-XML-SAX->=0.16:textproc/p5-XML-SAX \
			::textproc/p5-XML-LibXML \
			::textproc/p5-XML-SAX-Expat-Incremental

.include <bsd.port.mk>
