# $OpenBSD: Makefile,v 1.5 2019/06/03 16:06:56 sthen Exp $

COMMENT=	perl interface to PC/SC smartcards

V=		1.4.14
DISTNAME=	pcsc-perl-$V
PKGNAME=	p5-Chipcard-PCSC-$V
EXTRACT_SUFX=	.tar.bz2
REVISION=	0

CATEGORIES=	security

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MODULES=	cpan
CPAN_AUTHOR=	WHOM

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIR=	${PREFIX}/share/examples/p5-Chipcard-PCSC

BUILD_DEPENDS=	security/pcsc-lite
RUN_DEPENDS=	security/ccid

.include <bsd.port.mk>
