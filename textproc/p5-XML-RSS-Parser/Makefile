# $OpenBSD: Makefile,v 1.17 2020/07/03 21:45:53 sthen Exp $

COMMENT=		liberal object-oriented parser for RSS feeds

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		XML-RSS-Parser-4.0
REVISION=		3
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
