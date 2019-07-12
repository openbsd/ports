# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:40 sthen Exp $

COMMENT=	cloud provisioning for OpenBSD VMs

V=		0.9
DISTNAME=	cloud-agent-$V
CATEGORIES=	sysutils
HOMEPAGE=	https://github.com/reyk/cloud-agent/

MAINTAINER=	Reyk Floeter <reyk@openbsd.org>

# ISC
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}releases/download/v${V}/

WANTLIB=	c crypto expat ssl tls util

.include <bsd.port.mk>
