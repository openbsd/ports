# $OpenBSD: Makefile,v 1.3 2006/09/18 10:21:48 espie Exp $

COMMENT=		"switch GTK+ themes quickly"

DISTNAME=		gtk-theme-switch-1.0.1
CATEGORIES=		x11 graphics

HOMEPAGE=		http://www.muhri.net/nav.php3?node=gts

MAINTAINER=		Nick Nauwelaerts <nick@nauwelaerts.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m

MASTER_SITES=		http://www.muhri.net/

LIB_DEPENDS=		gtk.>=1.2,gdk.>=1.2::x11/gtk+

MAKE_FLAGS=		CC="${CC}" \
			CFLAGS="${CFLAGS} `gtk-config --cflags`" \
			LIBS="${LIBS} `gtk-config --libs`"

USE_X11=		Yes

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/switch ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/switch.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
