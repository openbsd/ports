# $OpenBSD: Makefile,v 1.7 2013/07/13 13:08:05 espie Exp $

COMMENT=		JSON implementation in C
NOT_FOR_ARCHS =		${GCC2_ARCHS}

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
