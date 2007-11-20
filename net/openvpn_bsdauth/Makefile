# $OpenBSD: Makefile,v 1.1.1.1 2007/11/20 21:34:19 fkr Exp $

COMMENT=	BSD Auth helper programm for OpenVPN

DISTNAME=	openvpn_bsdauth-4
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
RUN_REPENDS=	::net/openvpn

FAKE_FLAGS=	PREFIX=${TRUEPREFIX}

pre-configure:
	@perl -pi -e 's#!!PREFIX!!#${PREFIX}#g' ${WRKSRC}/openvpn_bsdauth.8

.include <bsd.port.mk>
