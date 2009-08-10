# $OpenBSD: Makefile,v 1.16 2009/08/10 06:31:09 kili Exp $
# $RuOBSD: Makefile,v 1.4 2002/04/29 11:07:18 grange Exp $
# $NetBSD: Makefile,v 1.1.1.1 2001/12/29 00:22:02 abs Exp $

COMMENT=		open source 68k Macintosh emulator

DISTNAME=		BasiliskII_src_31052001
PKGNAME=		BasiliskII-0.9.1p3
CATEGORIES=		emulators

HOMEPAGE=		http://basilisk.cebix.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xi Xxf86dga Xxf86vm audiofile c \
			glib gmodule iconv intl m pthread pthread-stubs \
			stdc++ sndio xcb

MASTER_SITES=		http://basilisk.cebix.net/downloads/

LIB_DEPENDS=		gtk.>=1.2,gdk::x11/gtk+ \
			esd.>=2::audio/esound

USE_X11=		Yes
USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf

WRKDIST=		${WRKDIR}/BasiliskII-0.9
WRKSRC=			${WRKDIR}/BasiliskII-0.9/src/Unix

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/BasiliskII
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/BasiliskII

.include <bsd.port.mk>
