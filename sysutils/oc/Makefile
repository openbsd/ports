COMMENT =		command line tool for controlling OpenShift clusters

GH_ACCOUNT =		openshift
GH_PROJECT =		oc
VERSION =		4.7.7
GH_COMMIT =		2513fdbb36e2ddf13bc0b17460151c03eb3a3547
DISTNAME =		oc-${VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://www.openshift.com

MAINTAINER =		Luca De Pandis <luca.depandis@protonmail.com>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread


MODULES =		lang/go

GO_PKGNAME =		github.com/openshift/oc
WRKSRC =		${MODGO_WORKSPACE}/src/${GO_PKGNAME}
ALL_TARGET =		${GO_PKGNAME}/cmd/oc

MODGO_LDFLAGS += \
	-X ${GO_PKGNAME}/pkg/version.commitFromGit=${GH_COMMIT} \
	-X ${GO_PKGNAME}/pkg/version.versionFromGit=${VERSION} \
	-X ${GO_PKGNAME}/pkg/version.majorFromGit=${VERSION:R:R} \
	-X ${GO_PKGNAME}/pkg/version.minorFromGit=${VERSION:R:E} \
	-X ${GO_PKGNAME}/pkg/version.gitTreeState=clean

.include <bsd.port.mk>
