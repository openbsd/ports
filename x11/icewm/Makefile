# $OpenBSD: Makefile,v 1.9 2001/10/25 03:11:45 brad Exp $

COMMENT=		'small, fast window manager'

DISTNAME=		icewm-1.0.7-7
PKGNAME=		icewm-1.0.7.7
CATEGORIES=     	x11	
NEED_VERSION=		1.474

HOMEPAGE=		http://www.icewm.org/

MAINTAINER=		Pete Fritchman <petef@databits.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ftp1.sourceforge.net/icewm/ \
			http://www.maol.yi.org/icewm/download/stable/

MODULES=		gettext
LIB_DEPENDS=		Imlib.19::graphics/imlib

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		--with-imlib=${PREFIX}/bin \
			--with-docdir=${PREFIX}/share/doc \
			--with-cfgdir=/etc/icewm
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

WRKDIST=		${WRKDIR}/icewm-1.0.7

post-install:
	${INSTALL_DATA} ${FILESDIR}/bsd-daemon.xpm ${PREFIX}/lib/X11/icewm/taskbar

.include <bsd.port.mk>
