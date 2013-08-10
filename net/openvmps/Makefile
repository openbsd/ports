# $OpenBSD: Makefile,v 1.8 2013/08/10 18:06:08 ajacoutot Exp $

COMMENT=	free implementation of Cisco VMPS

V=		1.4.05
DISTNAME=	vmpsd-${V}
PKGNAME=	openvmps-${V}
CATEGORIES=	net

HOMEPAGE=	http://vmps.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vmps/}

CONFIGURE_STYLE=gnu

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/openvmps

.include <bsd.port.mk>
