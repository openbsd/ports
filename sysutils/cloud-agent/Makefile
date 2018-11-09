# $OpenBSD: Makefile,v 1.2 2018/11/09 10:08:20 sthen Exp $

BROKEN=		needs to adapt to libressl changes

COMMENT=	cloud provisioning for OpenBSD VMs

V=		0.6
DISTNAME=	cloud-agent-$V
CATEGORIES=	sysutils
HOMEPAGE=	https://github.com/reyk/cloud-agent/

MAINTAINER=	Reyk Floeter <reyk@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}releases/download/v${V}/

WANTLIB=	c crypto tls expat

.include <bsd.port.mk>
