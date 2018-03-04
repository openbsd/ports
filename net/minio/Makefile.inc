# $OpenBSD: Makefile.inc,v 1.2 2018/03/04 12:56:14 jasper Exp $

GH_ACCOUNT ?=	minio

CATEGORIES =	net sysutils

HOMEPAGE =	https://minio.io

# APACHEv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c pthread
MODULES =	lang/go

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>
