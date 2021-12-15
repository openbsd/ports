# $OpenBSD: Makefile,v 1.13 2021/12/15 10:07:39 rsadowski Exp $

COMMENT =		command line tool for controlling Kubernetes clusters

GH_ACCOUNT =		kubernetes
GH_PROJECT =		kubernetes
V =			1.23.0
GH_TAGNAME =		v${V}
PKGNAME =		kubectl-${V}

CATEGORIES =		sysutils

HOMEPAGE =		https://kubernetes.io/docs/reference/kubectl/overview/

# Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES =		lang/go

GO_PKGNAME =		k8s.io/kubernetes
WRKSRC =		${MODGO_WORKSPACE}/src/${GO_PKGNAME}
ALL_TARGET =		${GO_PKGNAME}/cmd/kubectl

MODGO_LDFLAGS += \
	-X ${GO_PKGNAME}/vendor/k8s.io/component-base/version.gitMajor=${V:R:R} \
	-X ${GO_PKGNAME}/vendor/k8s.io/component-base/version.gitMinor=${V:R:E} \
	-X ${GO_PKGNAME}/vendor/k8s.io/component-base/version.gitVersion=v${V} \
	-X ${GO_PKGNAME}/vendor/k8s.io/component-base/version.buildDate="" \
	-X ${GO_PKGNAME}/vendor/k8s.io/component-base/version.gitTreeState=clean \
	-X ${GO_PKGNAME}/vendor/k8s.io/client-go/pkg/version.gitVersion=v${V} \
	-X k8s.io/client-go/pkg/version.buildDate="" \
	-X ${GO_PKGNAME}/vendor/k8s.io/client-go/pkg/version.gitTreeState=clean \
	-X ${GO_PKGNAME}/vendor/k8s.io/component-base/version.gitVersion=v${V}

.include <bsd.port.mk>
