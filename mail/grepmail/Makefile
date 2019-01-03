# $OpenBSD: Makefile,v 1.21 2019/01/03 18:10:59 giovanni Exp $

COMMENT=	search mailboxes for a particular email

DISTNAME=	grepmail-5.3111
PKGNAME=	${DISTNAME}
CATEGORIES=	mail perl5

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
CPAN_AUTHOR=	DCOPPIT

RUN_DEPENDS=	devel/p5-Time-TimeDate \
		converters/p5-DateManip \
		mail/p5-Mail-Mbox-MessageParser
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Benchmark-Timer
		
CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
