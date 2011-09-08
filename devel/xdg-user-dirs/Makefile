# $OpenBSD: Makefile,v 1.11 2011/09/08 06:20:43 ajacoutot Exp $

COMMENT=	utilities to manage well known user directories

DISTNAME=	xdg-user-dirs-0.13
CATEGORIES=	devel

REVISION=	1

HOMEPAGE=	http://freedesktop.org/wiki/Software/xdg-user-dirs/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://user-dirs.freedesktop.org/releases/

WANTLIB=	c

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/xdg-user-dirs

# Under OpenBSD, we don't have generic directories containing login
# scripts (e.g. /etc/X11/xinit/xinitrc.d/) that login managers would
# check, so use the xdg autostart directory which is standard amongst
# fd.o Desktops. It is up to the Desktop package maintainer to add a
# RUN_DEPENDS on xdg-user-dirs{|-gtk} if he/she wants to enable this.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xdg-user-dirs/xdg/autostart/
	${INSTALL_DATA} ${FILESDIR}/user-dirs-update.desktop \
		${PREFIX}/share/examples/xdg-user-dirs/xdg/autostart/user-dirs-update.desktop

.include <bsd.port.mk>
