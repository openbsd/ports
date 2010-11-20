# $OpenBSD: Makefile,v 1.18 2010/11/20 19:56:51 espie Exp $

COMMENT=	perl module to perform XSLT transformations

MODULES=	cpan
DISTNAME=	XML-XSLT-0.48
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.23 \
		textproc/p5-XML-DOM>=1.25

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
