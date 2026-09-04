COMMENT =	command line tool for controlling OpenShift clusters

COMMIT =	062bc5449c49
DATE =		20260522200906
VERSION =	4.22.0

MODGO_MODNAME =	github.com/openshift/oc
MODGO_VERSION =	v0.0.0-alpha.0.0.${DATE}-${COMMIT}

DISTNAME =	oc-${MODGO_VERSION}
PKGNAME =	oc-${VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://www.openshift.com

# Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c gpgme pthread

LIB_DEPENDS +=	security/gpgme

MODULES =	lang/go

GO_PKGNAME = github.com/openshift/oc

MODGO_LDFLAGS += \
	-X ${GO_PKGNAME}/pkg/version.commitFromGit=${COMMIT} \
	-X ${GO_PKGNAME}/pkg/version.versionFromGit=${VERSION} \
	-X ${GO_PKGNAME}/pkg/version.majorFromGit=${VERSION:R:R} \
	-X ${GO_PKGNAME}/pkg/version.minorFromGit=${VERSION:R:E} \
	-X ${GO_PKGNAME}/pkg/version.gitTreeState=clean

.include <modules.inc>

.include <bsd.port.mk>
