# $OpenBSD: Makefile,v 1.14 2019/05/01 00:32:16 cwen Exp $

COMMENT= 	parse records in CSV-like formats

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Text-RecordParser-1.6.5
CATEGORIES=	textproc devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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
