# $OpenBSD: Makefile,v 1.8 2013/08/07 15:37:09 naddy Exp $

COMMENT=		JSON implementation in C

DISTNAME =		json-c-0.11
CATEGORIES=		devel
SHARED_LIBS +=  json                      2.0 # 1.0
SHARED_LIBS +=  json-c                    0.0 # 2.1

HOMEPAGE=		http://oss.metaparadigm.com/json-c/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =		https://s3.amazonaws.com/json-c_releases/releases/

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
