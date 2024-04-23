COMMENT=	addons for openHAB

V=		4.1.2
DISTNAME=	openhab-addons-${V}

CATEGORIES=	misc

HOMEPAGE=	https://www.openhab.org/

MAINTAINER=	Chaz Kettleson <chaz@pyr3x.com>

# EPL-2.0
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/openhab/openhab-distro/releases/download/${V}/
EXTRACT_SUFX=	.kar
EXTRACT_ONLY=

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/openhab/addons/
	cp ${FULLDISTDIR}/${ALL_DISTFILES} ${PREFIX}/libexec/openhab/addons/

.include <bsd.port.mk>
