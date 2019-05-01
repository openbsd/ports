# $OpenBSD: Makefile,v 1.24 2019/05/01 16:04:26 danj Exp $

COMMENT=	perl module to perform XSLT transformations

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-XSLT-0.48
REVISION=	1
CATEGORIES=	textproc
FIX_EXTRACT_PERMISSIONS=Yes

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.23 \
		textproc/p5-XML-DOM>=1.25

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
