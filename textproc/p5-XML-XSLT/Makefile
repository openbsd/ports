# $OpenBSD: Makefile,v 1.25 2019/07/12 20:50:10 sthen Exp $

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
PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
