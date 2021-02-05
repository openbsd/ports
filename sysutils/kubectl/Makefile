# $OpenBSD: Makefile,v 1.5 2021/02/05 19:54:49 paco Exp $

COMMENT =		command line tool for controlling Kubernetes clusters

GH_ACCOUNT =		kubernetes
GH_PROJECT =		kubernetes
VERSION =		1.20.2
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
