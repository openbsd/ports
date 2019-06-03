# $OpenBSD: Makefile,v 1.3 2019/06/03 13:42:49 reyk Exp $

COMMENT=	cloud provisioning for OpenBSD VMs

V=		0.8
DISTNAME=	cloud-agent-$V
CATEGORIES=	sysutils
HOMEPAGE=	https://github.com/reyk/cloud-agent/

MAINTAINER=	Reyk Floeter <reyk@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}releases/download/v${V}/

WANTLIB=	c crypto tls expat

.include <bsd.port.mk>
