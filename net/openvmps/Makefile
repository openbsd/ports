# $OpenBSD: Makefile,v 1.1.1.1 2007/09/07 16:18:28 ajacoutot Exp $

COMMENT=	free implementation of Cisco VMPS

V=		1.3
DISTNAME=	vmpsd-${V}
PKGNAME=	openvmps-${V}
CATEGORIES=	net

HOMEPAGE=	http://vmps.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vmps/}

WANTLIB=	c

WRKDIST=	${WRKDIR}/vmpsd

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openvmps
	${INSTALL_DATA} ${WRKSRC}/vlan.db ${PREFIX}/share/examples/openvmps

.include <bsd.port.mk>
