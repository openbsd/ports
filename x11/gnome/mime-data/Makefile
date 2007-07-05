# $OpenBSD: Makefile,v 1.17 2007/07/05 22:50:11 jasper Exp $

COMMENT=		MIME and Application database for GNOME

GNOME_PROJECT=		gnome-mime-data
GNOME_VERSION=		2.4.3
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

USE_LIBTOOL=		No
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-mime-data; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/gnome-mime-data/

.include <bsd.port.mk>
