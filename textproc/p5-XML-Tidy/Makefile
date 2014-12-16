# $OpenBSD: Makefile,v 1.1.1.1 2014/12/16 10:59:30 sthen Exp $

COMMENT=	tidy indenting of XML documents

DISTNAME=	XML-Tidy-1.12.B55J2qn
EXTRACT_SUFX=	.tgz
PKGNAME=	p5-${DISTNAME:R}

CATEGORIES=	textproc

# GPLv3 only
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
RUN_DEPENDS=	math/p5-Math-BaseCnv \
		textproc/p5-XML-XPath
TEST_DEPENDS=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
