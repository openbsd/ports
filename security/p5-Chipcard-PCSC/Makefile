COMMENT=	perl interface to PC/SC smartcards

DISTNAME=	Chipcard-PCSC-v1.4.16
PKGNAME=	p5-${DISTNAME:S/v//}

HOMEPAGE=	https://pcsc-perl.apdu.fr/

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
