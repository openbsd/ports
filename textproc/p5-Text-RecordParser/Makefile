# $OpenBSD: Makefile,v 1.11 2013/03/11 11:42:44 espie Exp $

COMMENT= 	parse records in CSV-like formats

MODULES=	cpan
DISTNAME=	Text-RecordParser-v1.5.0
PKGNAME=	p5-Text-RecordParser-1.5.0
CATEGORIES=	textproc devel
USE_GROFF =	Yes

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
