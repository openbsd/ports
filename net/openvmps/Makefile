# $OpenBSD: Makefile,v 1.9 2014/11/05 08:24:57 ajacoutot Exp $

COMMENT=	free implementation of Cisco VMPS

V=		1.4.06
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
