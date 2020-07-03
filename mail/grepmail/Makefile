# $OpenBSD: Makefile,v 1.24 2020/07/03 21:45:24 sthen Exp $

COMMENT=	search mailboxes for a particular email

DISTNAME=	grepmail-5.3111
PKGNAME=	${DISTNAME}
CATEGORIES=	mail perl5
REVISION=	1

# GPL
PERMIT_PACKAGE=	Yes

MODULES=	cpan
CPAN_AUTHOR=	DCOPPIT

RUN_DEPENDS=	devel/p5-File-HomeDir \
		devel/p5-Time-TimeDate \
		converters/p5-DateManip \
		mail/p5-Mail-Mbox-MessageParser
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Benchmark-Timer
		
CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
