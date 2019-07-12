# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:35 sthen Exp $

COMMENT=	free implementation of Cisco VMPS

V=		1.4.06
REVISION=	1
DISTNAME=	vmpsd-${V}
PKGNAME=	openvmps-${V}
CATEGORIES=	net

HOMEPAGE=	http://vmps.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vmps/}

CONFIGURE_STYLE=gnu

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/openvmps

.include <bsd.port.mk>
