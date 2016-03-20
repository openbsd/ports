# $OpenBSD: Makefile,v 1.13 2016/03/20 19:57:10 naddy Exp $

COMMENT= 	parse records in CSV-like formats

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Text-RecordParser-v1.5.0
PKGNAME=	p5-Text-RecordParser-1.5.0
CATEGORIES=	textproc devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-List-MoreUtils \
		devel/p5-Readonly \
		devel/p5-Class-Accessor \
		devel/p5-IO-stringy

TEST_DEPENDS=devel/p5-Test-Exception \
		textproc/p5-Text-TabularDisplay

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
