# $OpenBSD: Makefile,v 1.9 2010/11/19 22:31:36 espie Exp $

COMMENT=	perl module for parsing nmap XML reports

MODULES=	cpan
DISTNAME=	Nmap-Parser-1.19
CATEGORIES=	net
USE_GROFF =	Yes

HOMEPAGE=       http://nmapparser.wordpress.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/nmap \
		textproc/p5-XML-Twig>=3.16

.include <bsd.port.mk>
