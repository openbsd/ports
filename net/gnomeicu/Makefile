# $OpenBSD: Makefile,v 1.11 2002/12/03 19:26:34 nino Exp $

COMMENT=		"GNOME ICQ client"
V=			0.96.1
DISTNAME=		gnomeicu-${V}
CATEGORIES=		net x11/gnome

HOMEPAGE=		http://gnomeicu.sourceforge.net
MAINTAINER=		Jim Geovedi <negative@magnesium.net>

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

BROKEN=			"Needs upgrade to a newer version"

.include <bsd.port.mk>
