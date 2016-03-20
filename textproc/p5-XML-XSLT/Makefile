# $OpenBSD: Makefile,v 1.22 2016/03/20 19:57:12 naddy Exp $

COMMENT=	perl module to perform XSLT transformations

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-XSLT-0.48
REVISION=	0
CATEGORIES=	textproc

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.23 \
		textproc/p5-XML-DOM>=1.25

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
