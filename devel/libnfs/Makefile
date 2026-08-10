COMMENT=	client library for accessing NFS

DISTNAME=	libnfs-7.0.0pl20260708
GH_ACCOUNT=	sahlberg
GH_PROJECT=	libnfs
GH_COMMIT=	8d4c2f6057acb6a01a316fbb7eea1c05a06e34c6
CATEGORIES=	devel net

SHARED_LIBS=	nfs	3.0

HOMEPAGE=	https://github.com/sahlberg/libnfs

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+, GPLv3+ and BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MODULES=	devel/cmake

CONFIGURE_ARGS+=-DENABLE_UTILS=ON \
		-DINSTALL_MAN_DIR="${PREFIX}/man"

NO_TEST=	Yes

.include <bsd.port.mk>
