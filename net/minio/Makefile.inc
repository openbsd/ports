# $OpenBSD: Makefile.inc,v 1.4 2019/07/12 20:48:32 sthen Exp $

GH_ACCOUNT ?=	minio

CATEGORIES =	net sysutils

HOMEPAGE =	https://minio.io

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# APACHEv2
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread
MODULES =	lang/go

MODGO_LDFLAGS +=  -X "github.com/minio/${GH_PROJECT}/cmd.Version=${V:C/T([0-9]+)-([0-9]+)-([0-9]+)/T\1:\2:\3/}" \
		-X "github.com/minio/${GH_PROJECT}/cmd.ReleaseTag=${GH_TAGNAME}"
