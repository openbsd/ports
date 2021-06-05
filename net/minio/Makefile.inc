# $OpenBSD: Makefile.inc,v 1.7 2021/06/05 12:03:27 danj Exp $

CATEGORIES =	net sysutils

HOMEPAGE =	https://minio.io

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread
MODULES =	lang/go

