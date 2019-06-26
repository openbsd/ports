# $OpenBSD: Makefile,v 1.4 2019/06/26 14:02:36 reyk Exp $

COMMENT=	cloud provisioning for OpenBSD VMs

V=		0.9
DISTNAME=	cloud-agent-$V
CATEGORIES=	sysutils
HOMEPAGE=	https://github.com/reyk/cloud-agent/

MAINTAINER=	Reyk Floeter <reyk@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}releases/download/v${V}/

WANTLIB=	c crypto expat ssl tls util

.include <bsd.port.mk>
