# $OpenBSD: Makefile,v 1.26 2020/07/03 21:45:54 sthen Exp $

COMMENT=	perl module to perform XSLT transformations

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	XML-XSLT-0.48
REVISION=	2
CATEGORIES=	textproc
FIX_EXTRACT_PERMISSIONS=Yes

RUN_DEPENDS=	textproc/p5-XML-Parser>=2.23 \
		textproc/p5-XML-DOM>=1.25

# GPL/Artistic
PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
