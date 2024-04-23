COMMENT=	integration platform for home automation

V=		4.1.2
DISTNAME=	openhab-${V}

CATEGORIES=	misc

HOMEPAGE=	https://www.openhab.org/

MAINTAINER=	Chaz Kettleson <chaz@pyr3x.com>

# EPL-2.0
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/openhab/openhab-distro/releases/download/${V}/

MODULES=	java
MODJAVA_VER=	17

RUN_DEPENDS=	java/javaPathHelper

NO_BUILD=	Yes
NO_TEST=	Yes

SUBST_VARS=	V

TAR=		tar -C ${WRKDIST}

pre-extract:
	mkdir ${WRKDIST}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openhab/
	${INSTALL_DATA} ${FILESDIR}/openhab.conf \
		${PREFIX}/share/examples/openhab/
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/openhab/
	cd ${WRKDIST} && pax -rw . ${PREFIX}/libexec/openhab/
	mv ${PREFIX}/libexec/openhab/conf ${PREFIX}/share/examples/openhab/
	mv ${PREFIX}/libexec/openhab/userdata ${PREFIX}/share/examples/openhab/

.include <bsd.port.mk>
