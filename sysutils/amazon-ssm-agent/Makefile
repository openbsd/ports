# $OpenBSD: Makefile,v 1.77 2020/07/30 07:57:24 ajacoutot Exp $

# i386: pty_openbsd.go:24:10: undefined: ptmget
ONLY_FOR_ARCHS=		amd64

COMMENT=		AWS SSM agent

GH_TAGNAME=		2.3.1569.0
GH_ACCOUNT=		aws
GH_PROJECT=		amazon-ssm-agent

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Amazon Software License
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

BUILD_DEPENDS=		lang/go

NO_TEST=		Yes

ALL_TARGET=		build-openbsd

USE_GMAKE=		Yes
MAKE_ENV=		SKIP_CHECKSTYLE=Yes GOCACHE=${WRKDIR}/go-cache
MAKE_FILE=		makefile

WRKSRC=			${WRKDIR}/src/github.com/aws/amazon-ssm-agent

pre-configure:
	rmdir ${WRKSRC}
	mv ${WRKDIR}/${DISTNAME} ${WRKSRC}
	${SUBST_CMD} ${WRKSRC}/agent/appconfig/constants_unix.go \
		${WRKSRC}/agent/log/log_unix.go

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amazon-ssm-agent \
		${PREFIX}/share/examples/amazon-ssm-agent/amazon/ssm
# don't strip(1) go binaries
	${INSTALL_SCRIPT} \
			${WRKBUILD}/bin/openbsd_${MACHINE_ARCH:S/i386/386/}/{amazon-ssm-agent,ssm-cli} \
			${PREFIX}/bin
	${INSTALL_DATA} \
		${WRKBUILD}/bin/{seelog_unix.xml,amazon-ssm-agent.json.template} \
		${PREFIX}/share/examples/amazon-ssm-agent/amazon/ssm
	${INSTALL_DATA} ${WRKSRC}/Tools/src/LICENSE \
		${PREFIX}/share/doc/amazon-ssm-agent

.include <bsd.port.mk>
