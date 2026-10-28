COMMENT =	reverse-proxy with built-in authentication and auditing

V = 18.11.1
REVISION = 0

DISTNAME = teleport-${V}
DISTFILES = teleport-vendored-${V}.tar.gz \
	teleport-webassets-${V}.tar.gz
WRKSRC = ${WRKDIR}/go/src/${ALL_TARGET}

CATEGORIES =	net security

HOMEPAGE =	https://goteleport.com

MAINTAINER =		Stefan Sperling <stsp@openbsd.org>

# AGPLv3 / Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto fido2 pthread

# Vendored distfile:
# ftp -o teleport-${V}.tar.gz https://github.com/gravitational/teleport/archive/refs/tags/v${V}.tar.gz
# tar -zxf teleport-${V}.tar.gz
# cd teleport-${V}/
# # needed for go 1.27, see https://github.com/charlievieth/strcase/issues/50:
# for m in $(find . -name go.mod); do (cd "$(dirname $m)" && go get -u github.com/charlievieth/strcase@v0.0.6); done
# for m in $(find . -name go.mod); do (cd "$(dirname $m)" && go mod vendor); done
# cd ..
# tar -zcf teleport-vendored-${V}.tar.gz teleport-${V}
#
# For now, we pre-generate web-assets on a Linux machine:
# curl --follow -o teleport-${V}.tar.gz https://github.com/gravitational/teleport/archive/refs/tags/v${V}.tar.gz
# tar -zxf teleport-${V}.tar.gz
# cd teleport-${V}/
# make ensure-webassets WEBASSETS_SKIP_BUILD=1
# make docker-ui
# mkdir teleport-${V}
# cp -a webassets teleport-${V}
# tar -zcvf teleport-webassets-${V}.tar.gz teleport-${V}
SITES =			https://liam.stsp.name/files/distfiles/

MODULES =		lang/go

MAKE_ENV =		FIDO2=dynamic \
			RDPCLIENT_SKIP_BUILD=1 \
			WEBASSETS_SKIP_BUILD=1 \
			BUILDFLAGS="${MODGO_FLAGS}"
MODGO_GOPATH =		${MODGO_WORKSPACE}:${MODGO_PACKAGE_PATH}

USE_GMAKE =		Yes
ALL_TARGET =		binaries

pre-configure:
	mkdir -p ${MODGO_WORKSPACE}/src/github.com/gravitational/
	ln -sf ${MODGO_WORKSPACE}/src/${ALL_TARGET} \
		${MODGO_WORKSPACE}/src/github.com/gravitational/teleport

post-configure:
	ln -sf ${MODGO_WORKSPACE}/src/${ALL_TARGET} ${WRKDIST}

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_TARGET}

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/build/tctl \
		${PREFIX}/bin
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/build/tsh \
		${PREFIX}/bin
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/src/${ALL_TARGET}/build/teleport \
		${PREFIX}/sbin
	
.include <bsd.port.mk>
