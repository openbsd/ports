# $OpenBSD: Makefile,v 1.6 2001/09/20 19:01:47 naddy Exp $

COMMENT=		"GNOME ICQ client"
V=			0.96.1
DISTNAME=		gnomeicu-${V}
CATEGORIES=		net
NEED_VERSION=   	1.455
HOMEPAGE=		http://gnomeicu.sourceforge.net
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/gnomeicu

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
