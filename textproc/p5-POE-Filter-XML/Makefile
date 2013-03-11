# $OpenBSD: Makefile,v 1.10 2013/03/11 11:42:43 espie Exp $

COMMENT= 		POE Filter for parsing XML

DISTNAME=		POE-Filter-XML-0.38
REVISION=		0
CATEGORIES=		textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
USE_GROFF =		Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-POE \
			textproc/p5-XML-SAX>=0.16 \
			textproc/p5-XML-LibXML \
			textproc/p5-XML-SAX-Expat-Incremental

.include <bsd.port.mk>
