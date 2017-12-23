# $OpenBSD: Makefile.inc,v 1.1.1.1 2017/12/23 21:19:39 landry Exp $

GH_ACCOUNT ?=	minio

CATEGORIES =	net sysutils

HOMEPAGE =	https://minio.io

# APACHEv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c pthread
MODULES =	lang/go
