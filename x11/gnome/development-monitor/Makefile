# $OpenBSD: Makefile,v 1.2 2010/03/21 10:37:08 ajacoutot Exp $

COMMENT=	follow GNOME development activity

GNOME_PROJECT=	gnome-development-monitor
GNOME_VERSION=	0.1
PKGNAME=	${DISTNAME}p0

CATEGORIES=	devel

# Public Domain - GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.bsdfrog.org/OpenBSD/distfiles/

MODULES=	lang/python \
		x11/gnome

RUN_DEPENDS=	::x11/py-gtk2 \
		::www/py-htmltmpl \
		::devel/py-dateutil \
		::www/py-webkitgtk

DESKTOP_FILES=	Yes
CONFIGURE_STYLE= # empty

PKG_ARCH=	*
NO_BUILD=	Yes
NO_REGRESS=	Yes

BASE=		gnome.py gnome.ui loading.tmpl pygooglechart.py \
		summary.tmpl
INC=		footer.tmpl header.tmpl
IMG=		gnome.svg
DOC=		README.md

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gnome.py
	${SUBST_CMD} -c ${FILESDIR}/gnome-development-monitor.sh \
		${WRKSRC}/gnome-development-monitor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnome-development-monitor/inc
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnome-development-monitor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/gnome-development-monitor.desktop \
		${PREFIX}/share/applications
	${INSTALL_SCRIPT} ${WRKSRC}/gnome-development-monitor \
		${PREFIX}/bin/gnome-development-monitor
.for i in ${BASE}
	${INSTALL_DATA} ${WRKSRC}/${i} \
		${PREFIX}/share/gnome-development-monitor/
.endfor
.for i in ${INC}
	${INSTALL_DATA} ${WRKSRC}/inc/${i} \
		${PREFIX}/share/gnome-development-monitor/inc/
.endfor
.for i in ${IMG}
	${INSTALL_DATA} ${WRKSRC}/${i} \
		${PREFIX}/share/pixmaps/
.endfor
.for i in ${DOC}
	${INSTALL_DATA} ${WRKSRC}/${i} \
		${PREFIX}/share/doc/gnome-development-monitor/
.endfor

.include <bsd.port.mk>
