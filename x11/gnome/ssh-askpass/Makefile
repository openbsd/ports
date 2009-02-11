# $OpenBSD: Makefile,v 1.5 2009/02/11 15:58:35 jasper Exp $

COMMENT=	simple GNOME SSH passphrase grabber

V=		5.1
DISTNAME=	openssh-$Vp1
PKGNAME=	gnome-ssh-askpass-$V
CATEGORIES=	x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.usa.openbsd.org/pub/OpenBSD/OpenSSH/portable/ \
		ftp://ftp.de.openbsd.org/pub/OpenBSD/OpenSSH/portable/ \
		ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/

MODULES=	devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += z

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

CONFIGURE_STYLE=none
WRKDIST=	${WRKDIR}/${DISTNAME}/contrib
ALL_TARGET=	gnome-ssh-askpass2
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/gnome-ssh-askpass2 ${PREFIX}/bin

.include <bsd.port.mk>
