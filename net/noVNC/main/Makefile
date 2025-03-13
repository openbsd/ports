COMMENT=	VNC client using HTML5 (Web Sockets, Canvas)

GH_ACCOUNT=	novnc
GH_PROJECT=	noVNC
GH_TAGNAME=	v1.6.0

CATEGORIES=	net www

HOMEPAGE=	https://novnc.com/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

EPOCH=		0

# core: MPL 2.0
# (plus some others for included files)
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/websockify

NO_BUILD=	Yes
NO_TEST=	Yes
PREFIX=		/var/www

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/noVNC
	cd ${WRKSRC} && pax -rw * ${PREFIX}/noVNC
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/noVNC
	chmod a=rX,u+w ${PREFIX}/noVNC
	find ${PREFIX}/noVNC -name '*${PATCHORIG}' -delete
	mv ${PREFIX}/noVNC/defaults.json{,.dist}
	mv ${PREFIX}/noVNC/mandatory.json{,.dist}
	ln -s ${TRUEPREFIX}/noVNC/utils/novnc_proxy \
		${WRKINST}/usr/local/bin/
	mv ${PREFIX}/noVNC/docs/novnc_proxy.1 \
		${WRKINST}/usr/local/man/man1/

.include <bsd.port.mk>
