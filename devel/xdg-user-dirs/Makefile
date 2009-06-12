# $OpenBSD: Makefile,v 1.3 2009/06/12 15:50:46 ajacoutot Exp $

COMMENT=	utilities to manage well know user directories

DISTNAME=	xdg-user-dirs-0.10
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/xdg-user-dirs/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://user-dirs.freedesktop.org/releases/

WANTLIB=	c

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/xdg-user-dirs

AUTOSTARTDIR=	${PREFIX}/share/examples/xdg-user-dirs/xdg/autostart

post-install:
	${INSTALL_DATA_DIR} ${AUTOSTARTDIR}
	${SUBST_CMD} -c ${FILESDIR}/xdg-user-dirs-update.desktop \
		${AUTOSTARTDIR}/xdg-user-dirs-update.desktop
	chown ${SHAREOWN}:${SHAREGRP} ${AUTOSTARTDIR}/xdg-user-dirs-update.desktop

.include <bsd.port.mk>
