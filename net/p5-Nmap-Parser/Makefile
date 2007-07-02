# $OpenBSD: Makefile,v 1.4 2007/07/02 22:36:05 jasper Exp $

COMMENT=	perl module for parsing nmap XML reports

MODULES=	cpan
DISTNAME=	Nmap-Parser-1.11
CATEGORIES=	net

HOMEPAGE=       http://nmapparser.wordpress.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::net/nmap \
		:p5-XML-Twig->=3.16:textproc/p5-XML-Twig

.include <bsd.port.mk>
