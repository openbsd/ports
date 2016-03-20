# $OpenBSD: Makefile,v 1.2 2016/03/20 19:57:12 naddy Exp $

COMMENT=	tidy indenting of XML documents

DISTNAME=	XML-Tidy-1.12.B55J2qn
EXTRACT_SUFX=	.tgz
PKGNAME=	p5-${DISTNAME:R}

CATEGORIES=	textproc

# GPLv3 only
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*
RUN_DEPENDS=	math/p5-Math-BaseCnv \
		textproc/p5-XML-XPath
TEST_DEPENDS=	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
