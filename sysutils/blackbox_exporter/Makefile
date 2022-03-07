COMMENT=	Prometheus exporter to test HTTP/DNS/TCP/ICMP endpoints

MODGO_MODNAME=	github.com/prometheus/blackbox_exporter
MODGO_VERSION=	v0.19.0
DISTNAME=	blackbox_exporter-${MODGO_VERSION}

CATEGORIES=	sysutils

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# Apache 2.0
PERMIT_PACKAGE=Yes

USE_GMAKE=	Yes

MODULES=	lang/go

.include "modules.inc"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/blackbox_exporter
	cd ${PREFIX}/share; \
	    ${INSTALL_DATA} ${WRKSRC}/{LICENSE,*.md} doc/blackbox_exporter; \
	    ${INSTALL_DATA} ${WRKSRC}/*.yml examples/blackbox_exporter

.include <bsd.port.mk>
