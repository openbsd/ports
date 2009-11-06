# $OpenBSD: Makefile,v 1.8 2009/11/06 08:32:37 jasper Exp $

COMMENT=	classes to represent XML data in PHP

DISTNAME=	XML_Tree-1.1
PKGNAME=	pear-${DISTNAME:S/_/-/}p2
CATEGORIES=	textproc pear

MODULES=	www/pear

RUN_DEPENDS=	:pear-XML-Parser-*:textproc/pear-XML-Parser

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
