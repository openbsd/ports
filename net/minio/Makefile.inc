# $OpenBSD: Makefile.inc,v 1.8 2021/12/15 00:35:30 danj Exp $

CATEGORIES =	net sysutils

MAINTAINER =	Daniel Jakots <obsd@chown.me>

HOMEPAGE =	https://minio.io

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread
MODULES =	lang/go

