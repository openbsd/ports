# $OpenBSD: Makefile,v 1.8 2002/05/15 17:42:24 espie Exp $

COMMENT=		"GNOME ICQ client"
V=			0.96.1
DISTNAME=		gnomeicu-${V}
CATEGORIES=		net x11/gnome
NEED_VERSION=   	1.455
HOMEPAGE=		http://gnomeicu.sourceforge.net
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME:=stable/sources/gnomeicu/}

LIB_DEPENDS=		panel_applet::x11/gnome/core \
			gdbm.::databases/gdbm

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	autoconf
CONFIGURE_ARGS= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnomeicu; \
	cp -rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnomeicu/

.include <bsd.port.mk>
