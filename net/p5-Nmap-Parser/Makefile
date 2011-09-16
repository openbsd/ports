# $OpenBSD: Makefile,v 1.12 2011/09/16 11:13:39 espie Exp $

COMMENT=	perl module for parsing nmap XML reports

MODULES=	cpan
DISTNAME=	Nmap-Parser-1.2
EPOCH=		0
REVISION=	1
CATEGORIES=	net

HOMEPAGE=       http://nmap-parser.googlecode.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/nmap \
		textproc/p5-XML-Twig>=3.16

.include <bsd.port.mk>
