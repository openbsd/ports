# $OpenBSD: Makefile,v 1.23 2017/12/07 13:12:44 espie Exp $

COMMENT=	perl module to perform XSLT transformations

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-XSLT-0.48
REVISION=	0
CATEGORIES=	textproc
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.23 \
		textproc/p5-XML-DOM>=1.25

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
