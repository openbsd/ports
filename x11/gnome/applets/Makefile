# $OpenBSD: Makefile,v 1.8 2001/10/24 12:50:10 espie Exp $

COMMENT=		"applets for use with the GNOME panel"
V=			1.4.0.1
DISTNAME=		gnome-applets-${V}
CATEGORIES=		x11 x11/gnome
NEED_VERSION=   	1.473
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/gnome-applets
EXTRACT_SUFX=		.tar.bz2

PATCH_LIST=             ${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
                        ${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
                        patch-*

LIB_DEPENDS=		panel_applet::x11/gnome/core \
			gtop,gtop_common,gtop_sysdeps::devel/libgtop,gnome

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-applets; \
	cp -rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-applets/

.include <bsd.port.mk>
