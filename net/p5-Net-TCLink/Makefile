# $OpenBSD: Makefile,v 1.1.1.1 2012/06/28 19:08:45 sthen Exp $

COMMENT=		interface to TrustCommerce gateway

MODULES=		cpan
DISTNAME=		Net_TCLink.pm-3.4
PKGNAME=		p5-Net-TCLink-3.4
CATEGORIES=		net
CPAN_AUTHOR=		WITTEN

# GPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SHARED_ONLY=		Yes
WANTLIB=		crypto ssl

REGRESS_IS_INTERACTIVE=	Yes
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
