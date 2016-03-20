# $OpenBSD: Makefile,v 1.3 2016/03/20 19:56:59 naddy Exp $

COMMENT=	perl interface to PC/SC smartcards

V=		1.4.14
DISTNAME=	pcsc-perl-$V
PKGNAME=	p5-Chipcard-PCSC-$V
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	perl

MODULES=	cpan
CPAN_AUTHOR=	WHOM

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIR=	${PREFIX}/share/examples/p5-Chipcard-PCSC

BUILD_DEPENDS=	security/pcsc-lite
RUN_DEPENDS=	security/ccid

.include <bsd.port.mk>
