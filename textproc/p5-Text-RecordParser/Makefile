# $OpenBSD: Makefile,v 1.7 2010/10/19 07:54:24 espie Exp $

COMMENT= 	parse records in CSV-like formats

MODULES=	cpan
DISTNAME=	Text-RecordParser-v1.2.1
PKGNAME=	p5-Text-RecordParser-1.2.1p2
CATEGORIES=	textproc devel
USE_GROFF =	Yes


# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-List-MoreUtils \
		::devel/p5-Readonly \
		::devel/p5-Class-Accessor \
		::devel/p5-IO-stringy

REGRESS_DEPENDS=::devel/p5-Test-Exception \
		::textproc/p5-Text-TabularDisplay

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
