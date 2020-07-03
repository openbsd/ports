# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:40 sthen Exp $

COMMENT=	perl interface to PC/SC smartcards

V=		1.4.14
DISTNAME=	pcsc-perl-$V
PKGNAME=	p5-Chipcard-PCSC-$V
EXTRACT_SUFX=	.tar.bz2
REVISION=	2

CATEGORIES=	security

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
