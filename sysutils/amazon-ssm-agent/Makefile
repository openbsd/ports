# $OpenBSD: Makefile,v 1.1.1.1 2017/01/04 09:05:40 ajacoutot Exp $

COMMENT=		AWS SSM agent

GH_TAGNAME=		v1.2.290.0
GH_ACCOUNT=		aws
GH_PROJECT=		amazon-ssm-agent

CATEGORIES=		sysutils

HOMEPAGE=		https://aws.amazon.com/cli/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Amazon Software License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

BUILD_DEPENDS=		lang/go

NO_TEST=		Yes

ALL_TARGET=		build-openbsd
INSTALL_TARGET=		install-openbsd

USE_GMAKE=		Yes
MAKE_ENV=		SKIP_CHECKSTYLE=Yes
MAKE_FILE=		makefile
FAKE_FLAGS=		DESTDIR=${WRKINST} \
			PREFIX=${TRUEPREFIX} \
			SYSCONFDIR=${PREFIX}/share/examples/amazon-ssm-agent

WRKSRC=			${WRKDIR}/src/github.com/aws/amazon-ssm-agent

pre-configure:
	rmdir ${WRKSRC}
	mv ${WRKDIR}/${DISTNAME} ${WRKSRC}
	${SUBST_CMD} ${WRKSRC}/agent/appconfig/constants_unix.go \
		${WRKSRC}/agent/log/log_unix.go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/amazon-ssm-agent/
	${INSTALL_DATA} ${WRKSRC}/Tools/src/LICENSE \
		${PREFIX}/share/doc/amazon-ssm-agent/

.include <bsd.port.mk>
