COMMENT=	client library for accessing NFS

DISTNAME=	libnfs-5.0.2
CATEGORIES=	devel net
SITES=		https://github.com/sahlberg/libnfs/archive/

SHARED_LIBS=	nfs	2.2

HOMEPAGE=	https://github.com/sahlberg/libnfs

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+, GPLv3+ and BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE= autoreconf

WRKDIST=	${WRKDIR}/libnfs-${DISTNAME}

.include <bsd.port.mk>
