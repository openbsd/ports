# $OpenBSD: Makefile,v 1.10 2001/10/11 21:47:12 espie Exp $

COMMENT=		"libraries for the GNOME project"
V=			1.2.13
DISTNAME=		gnome-libs-${V}
CATEGORIES=		x11 x11/gnome
NEED_VERSION=   	1.473
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/gnome-libs

PATCH_LIST=             ${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
                        ${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
                        patch-*

LIB_DEPENDS=		gdk_imlib.19::graphics/imlib \
			esd.2::audio/esound \
			db::databases/db \
			ORBit.5,ORBitutil.5,IIOP.5,ORBitCosNaming.5::devel/ORBit

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	autoconf

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--with-kde-datadir=${LOCALBASE}/share
CONFIGURE_ARGS+= 	--localstatedir=/var/run
CONFIGURE_ARGS+= 	--disable-test-gnome
CONFIGURE_ARGS+=	--disable-gtk-doc

CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			DB_LIB="-ldb"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-libs; \
	cp -rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-libs/

.include <bsd.port.mk>
