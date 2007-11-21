# $OpenBSD: Makefile,v 1.2 2007/11/21 14:27:28 fkr Exp $

COMMENT=	BSD Auth helper program for OpenVPN

DISTNAME=	openvpn_bsdauth-4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net
HOMEPAGE=	http://www.wormhole.hu/~ice/openvpn_bsdauth/

MAINTAINER=	Felix Kronlage <fkr@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}
RUN_DEPENDS=	::net/openvpn
BUILD_DEPENDS=	${RUN_DEPENDS}

FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

pre-configure:
	@perl -pi -e 's#!!PREFIX!!#${PREFIX}#g' ${WRKSRC}/openvpn_bsdauth.8

.include <bsd.port.mk>
