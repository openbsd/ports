# $OpenBSD: Makefile,v 1.5 2008/09/08 09:51:22 jasper Exp $

COMMENT=	perl module for parsing nmap XML reports

MODULES=	cpan
DISTNAME=	Nmap-Parser-1.16
CATEGORIES=	net

HOMEPAGE=       http://nmapparser.wordpress.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::net/nmap \
		:p5-XML-Twig->=3.16:textproc/p5-XML-Twig

.include <bsd.port.mk>
