# $OpenBSD: Makefile,v 1.2 2015/11/20 14:27:17 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to PC/SC smartcards

V=		1.4.14
DISTNAME=	pcsc-perl-$V
PKGNAME=	p5-Chipcard-PCSC-$V
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	security

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
CPAN_AUTHOR=	WHOM

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIR=	${PREFIX}/share/examples/p5-Chipcard-PCSC

BUILD_DEPENDS=	security/pcsc-lite
RUN_DEPENDS=	security/ccid

.include <bsd.port.mk>
