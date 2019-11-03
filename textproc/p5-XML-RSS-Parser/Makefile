# $OpenBSD: Makefile,v 1.16 2019/11/03 14:07:46 jasper Exp $

COMMENT=		liberal object-oriented parser for RSS feeds

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		XML-RSS-Parser-4.0
REVISION=		2
CATEGORIES=		textproc

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		textproc/p5-XML-Elemental>=2.0 \
	 		devel/p5-Class-XPath>=1.4 \
			devel/p5-Class-ErrorHandler

WRKDIST= 		${WRKDIR}/XML-RSS-Parser-4

pre-configure:
	rm ${WRKBUILD}/lib/XML/RSS/*.orig

.include <bsd.port.mk>
