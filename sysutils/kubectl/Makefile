# $OpenBSD: Makefile,v 1.4 2020/09/18 08:26:07 paco Exp $

COMMENT =		command line tool for controlling Kubernetes clusters

GH_ACCOUNT =		kubernetes
GH_PROJECT =		kubernetes
VERSION =		1.19.2
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
