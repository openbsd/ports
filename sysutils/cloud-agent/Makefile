COMMENT=	cloud provisioning for OpenBSD VMs

V=		1.1
DISTNAME=	cloud-agent-$V
CATEGORIES=	sysutils
HOMEPAGE=	https://github.com/reyk/cloud-agent/

MAINTAINER=	Reyk Floeter <reyk@openbsd.org>

# ISC
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}releases/download/v${V}/

WANTLIB=	c crypto expat ssl tls util

MAKE_FLAGS=	USE_LIBRESSL_CMS=1

.include <bsd.port.mk>
