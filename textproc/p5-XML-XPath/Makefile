# $OpenBSD: Makefile,v 1.21 2010/11/20 19:56:51 espie Exp $

COMMENT=	modules for parsing and evaluating XPath statements

MODULES=	cpan
DISTNAME=	XML-XPath-1.13
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.23

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
