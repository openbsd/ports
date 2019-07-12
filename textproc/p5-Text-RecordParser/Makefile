# $OpenBSD: Makefile,v 1.15 2019/07/12 20:50:07 sthen Exp $

COMMENT= 	parse records in CSV-like formats

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Text-RecordParser-1.6.5
CATEGORIES=	textproc devel

# GPLv2
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-Class-Accessor \
			devel/p5-IO-stringy \
			devel/p5-List-MoreUtils \
			devel/p5-Readonly \
			textproc/p5-Text-Autoformat

TEST_DEPENDS=		devel/p5-Test-Exception \
			textproc/p5-Text-TabularDisplay

MAKE_ENV +=		TEST_POD=Yes

CONFIGURE_STYLE=	modinst

.include <bsd.port.mk>
