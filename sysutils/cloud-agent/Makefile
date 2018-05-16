# $OpenBSD: Makefile,v 1.1.1.1 2018/05/16 11:58:32 reyk Exp $

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
