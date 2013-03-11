# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:09 espie Exp $

COMMENT=	library for parsing dsh-style configuration files

DISTNAME=	libdshconfig-0.20.9
CATEGORIES=	devel

SHARED_LIBS+=		dshconfig                 0.0 # 1.0

HOMEPAGE=	http://www.netfort.gr.jp/~dancer/software/
MASTER_SITES=	${HOMEPAGE}downloads/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
