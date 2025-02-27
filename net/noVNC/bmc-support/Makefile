COMMENT=	VNC client using HTML5 (Web Sockets, Canvas)

DISTNAME=	noVNC-bmc-support-20160209
GH_ACCOUNT=	kelleyk
GH_PROJECT=	noVNC
GH_COMMIT=	9ade40e815b15c7dcf732e24f6870cd0d88547c2
REVISION=	3

CATEGORIES=	net www

HOMEPAGE=	https://github.com/kelleyk/noVNC

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# core: MPL 2.0
# (plus some others for included files)
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/websockify

NO_BUILD=	Yes
NO_TEST=	Yes
PREFIX=		/var/www

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/noVNC-bmc
	cd ${WRKSRC} && pax -rw * ${PREFIX}/noVNC-bmc
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/noVNC-bmc
	chmod a=rX,u+w ${PREFIX}/noVNC-bmc
	find ${PREFIX}/noVNC-bmc -name '*${PATCHORIG}' -delete
	ln -s ${TRUEPREFIX}/noVNC-bmc/utils/launch.sh \
		${WRKINST}${LOCALBASE}/bin/noVNC-bmc

.include <bsd.port.mk>
