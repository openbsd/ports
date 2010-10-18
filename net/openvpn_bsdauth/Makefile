# $OpenBSD: Makefile,v 1.8 2010/10/18 18:36:51 espie Exp $

COMMENT =	BSD Auth helper program for OpenVPN

DISTNAME =	openvpn_bsdauth-7
REVISION=	0
CATEGORIES =	net
HOMEPAGE =	http://www.wormhole.hu/~ice/openvpn_bsdauth/

MAINTAINER =	Felix Kronlage <fkr@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c

MASTER_SITES =	${HOMEPAGE}

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	::net/openvpn

FAKE_FLAGS =	PREFIX=${TRUEPREFIX}
USE_GROFF =	Yes

pre-configure:
	@perl -pi -e 's#!!PREFIX!!#${PREFIX}#g' ${WRKSRC}/openvpn_bsdauth.8

.include <bsd.port.mk>
