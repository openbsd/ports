# $OpenBSD: Makefile,v 1.12 2002/12/29 20:31:41 fgsch Exp $

COMMENT=		"small, fast window manager"

DISTNAME=		icewm-1.0.9-2
PKGNAME=		icewm-1.0.9.2
CATEGORIES=     	x11	

HOMEPAGE=		http://www.icewm.org/

MAINTAINER=		Andrey Smagin <andrey@smagin.com>

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
CONFIGURE_STYLE=	gnu dest
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
