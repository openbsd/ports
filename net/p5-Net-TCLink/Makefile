# $OpenBSD: Makefile,v 1.5 2015/07/16 23:57:26 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		interface to TrustCommerce gateway

MODULES=		cpan
DISTNAME=		Net_TCLink.pm-3.4
PKGNAME=		p5-Net-TCLink-3.4
REVISION=		2
CATEGORIES=		net
CPAN_AUTHOR=		WITTEN

# GPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl

TEST_IS_INTERACTIVE=	Yes
# Requires Internet connection to TrustCommerce server

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.PL

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Net-TCLink
	${INSTALL_DATA} ${WRKSRC}/doc/TCDevGuide.html \
		${PREFIX}/share/doc/p5-Net-TCLink
	${INSTALL_DATA} ${WRKSRC}/doc/TCDevGuide.txt \
		${PREFIX}/share/doc/p5-Net-TCLink

.include <bsd.port.mk>
