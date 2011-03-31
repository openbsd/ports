# $OpenBSD: Makefile,v 1.10 2011/03/31 14:06:26 jasper Exp $

COMMENT=	perl module for parsing nmap XML reports

MODULES=	cpan
DISTNAME=	Nmap-Parser-1.2
EPOCH=		0
CATEGORIES=	net

HOMEPAGE=       http://anthonypersaud.com/category/nmap-parser/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/nmap \
		textproc/p5-XML-Twig>=3.16

.include <bsd.port.mk>
