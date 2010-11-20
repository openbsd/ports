# $OpenBSD: Makefile,v 1.4 2010/11/20 19:56:50 espie Exp $

COMMENT=	add line information to XML parse errors

MODULES=	cpan
DISTNAME=	XML-Filter-ExceptionLocator-1.00
CATEGORIES=	textproc devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	textproc/p5-XML-SAX \
		textproc/p5-XML-SAX-ExpatXS

.include <bsd.port.mk>
