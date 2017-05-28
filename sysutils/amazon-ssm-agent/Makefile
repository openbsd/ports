# $OpenBSD: Makefile,v 1.5 2017/05/28 09:25:31 ajacoutot Exp $

COMMENT=		AWS SSM agent

GH_TAGNAME=		2.0.790.0
GH_ACCOUNT=		aws
GH_PROJECT=		amazon-ssm-agent

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Amazon Software License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

BUILD_DEPENDS=		lang/go

NO_TEST=		Yes

ALL_TARGET=		build-openbsd

USE_GMAKE=		Yes
MAKE_ENV=		SKIP_CHECKSTYLE=Yes
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
			${WRKBUILD}/bin/openbsd_${MACHINE_ARCH}/{amazon-ssm-agent,ssm-cli} \
			${PREFIX}/bin
	${INSTALL_DATA} \
		${WRKBUILD}/bin/{seelog_unix.xml,amazon-ssm-agent.json.template} \
		${PREFIX}/share/examples/amazon-ssm-agent/amazon/ssm
	${INSTALL_DATA} ${WRKSRC}/Tools/src/LICENSE \
		${PREFIX}/share/doc/amazon-ssm-agent
	

.include <bsd.port.mk>
