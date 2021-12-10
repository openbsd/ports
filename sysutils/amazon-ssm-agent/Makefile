# $OpenBSD: Makefile,v 1.109 2021/12/10 13:15:01 ajacoutot Exp $

# i386: pty_openbsd.go:24:10: undefined: ptmget
ONLY_FOR_ARCHS=		amd64

COMMENT=		AWS SSM agent

GH_TAGNAME=		3.1.634.0
GH_ACCOUNT=		aws
GH_PROJECT=		amazon-ssm-agent

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Amazon Software License
PERMIT_PACKAGE=		Yes

BUILD_DEPENDS=		lang/go \
			shells/bash

NO_TEST=		Yes

ALL_TARGET=		build-openbsd

USE_GMAKE=		Yes
MAKE_ENV=		SKIP_CHECKSTYLE=Yes GOCACHE=${WRKDIR}/go-cache GO111MODULE=off
MAKE_FILE=		makefile

WRKSRC=			${WRKDIR}/src/github.com/aws/amazon-ssm-agent

PORTHOME=		${WRKDIR}
MAKE_ENV=		GOPATH=${PORTHOME}

pre-configure:
	rmdir ${WRKSRC}
	mv ${WRKDIR}/${DISTNAME} ${WRKSRC}
	${SUBST_CMD} ${WRKSRC}/agent/appconfig/constants_unix.go \
		${WRKSRC}/agent/log/log_unix.go

do-install:
# INSTALL_SCRIPT: don't strip(1) go binaries
	${INSTALL_SCRIPT} \
			${WRKBUILD}/bin/openbsd_${MACHINE_ARCH:S/i386/386/}/* \
			${PREFIX}/bin
	rm ${PREFIX}/bin/updater
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amazon-ssm-agent \
		${PREFIX}/share/examples/amazon-ssm-agent/amazon/ssm
	${INSTALL_DATA} \
		${WRKBUILD}/bin/{seelog_unix.xml,amazon-ssm-agent.json.template} \
		${PREFIX}/share/examples/amazon-ssm-agent/amazon/ssm
	${INSTALL_DATA} ${WRKSRC}/Tools/src/LICENSE \
		${PREFIX}/share/doc/amazon-ssm-agent

.include <bsd.port.mk>
