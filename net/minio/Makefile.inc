# $OpenBSD: Makefile.inc,v 1.6 2021/04/15 07:40:24 denis Exp $

CATEGORIES =	net sysutils

HOMEPAGE =	https://minio.io

# APACHEv2
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread
MODULES =	lang/go

