# $OpenBSD: Makefile,v 1.43 2019/07/12 20:50:08 sthen Exp $

COMMENT=	perl module to manage XML RSS files

DISTNAME=	XML-RSS-1.60
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-DateTime-Format-Mail \
			devel/p5-DateTime-Format-W3CDTF \
			textproc/p5-XML-Parser \
			www/p5-HTML-Parser

TEST_DEPENDS=		devel/p5-Test-Differences \
			devel/p5-Test-Manifest>=0.9 \
			devel/p5-Test-TrailingSpace

MAKE_ENV+=		TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes

post-install:
	${MODCPAN_POST_INSTALL}

.include <bsd.port.mk>
