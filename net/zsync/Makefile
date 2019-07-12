# $OpenBSD: Makefile,v 1.8 2019/07/12 20:48:53 sthen Exp $

COMMENT=	gzip-aware file mirroring over http

DISTNAME=	zsync-0.6.2
REVISION=	2
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	net

HOMEPAGE=	http://zsync.moria.org.uk/

# Artistic v2
PERMIT_PACKAGE=	Yes

WANTLIB += c m

MASTER_SITES=	${HOMEPAGE}download/

AUTOCONF_VERSION=	2.65
CONFIGURE_STYLE=	autoconf

.include <bsd.port.mk>
