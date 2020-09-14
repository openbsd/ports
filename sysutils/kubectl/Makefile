# $OpenBSD: Makefile,v 1.3 2020/09/14 07:52:42 paco Exp $

COMMENT =		command line tool for controlling Kubernetes clusters

GH_ACCOUNT =		kubernetes
GH_PROJECT =		kubernetes
VERSION =		1.19.1
GH_TAGNAME =		v${VERSION}
PKGNAME =		kubectl-${VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://kubernetes.io/docs/reference/kubectl/overview/

# Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES =		lang/go

GO_PKGNAME =		k8s.io/kubernetes
WRKSRC =		${MODGO_WORKSPACE}/src/${GO_PKGNAME}
ALL_TARGET =		${GO_PKGNAME}/cmd/kubectl

.include <bsd.port.mk>
