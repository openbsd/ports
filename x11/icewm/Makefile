# $OpenBSD: Makefile,v 1.14 2004/02/05 21:22:36 naddy Exp $

COMMENT=		"small, fast window manager"

DISTNAME=		icewm-1.0.9-2
PKGNAME=		icewm-1.0.9.2
CATEGORIES=     	x11	

HOMEPAGE=		http://www.icewm.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=           ${MASTER_SITE_SOURCEFORGE:=icewm/}

LIB_DEPENDS=		Imlib.19::graphics/imlib

USE_X11=		Yes
NO_REGRESS=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf dest
AUTOCONF_VERSION=	2.52
CONFIGURE_ARGS=		--with-imlib=${PREFIX}/bin \
			--with-docdir=${PREFIX}/share/doc \
			--with-libdir=${PREFIX}/share/icewm \
			--with-cfgdir=${SYSCONFDIR}/icewm
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST=		${WRKDIR}/icewm-1.0.9

post-install:
			${INSTALL_DATA} ${FILESDIR}/openbsd.xpm ${PREFIX}/share/icewm/taskbar

.include <bsd.port.mk>
