# $OpenBSD: Makefile,v 1.19 2002/09/20 08:15:16 nino Exp $

COMMENT=		"libraries for the GNOME project"

DISTNAME=		gnome-libs-1.4.1.4
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org/
MAINTAINER=		Nils Nordman <nino@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-libs/1.4/}

PATCH_LIST=		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
			${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
			patch-*

# fix for Alpha
.if (${MACHINE_ARCH} == "alpha")
PATCH_LIST+=		sup-alpha-*
.endif

LIB_DEPENDS=		Imlib,gdk_imlib.19::graphics/imlib \
			esd.2::audio/esound \
			ORBit.5,ORBitutil.5,IIOP.5,ORBitCosNaming.5::devel/ORBit \
			gdk.1.2::x11/gtk+

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	autoconf

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--enable-prefer-db1
CONFIGURE_ARGS+= 	--with-kde-datadir=${LOCALBASE}/share
CONFIGURE_ARGS+= 	--disable-test-gnome
CONFIGURE_ARGS+=	--disable-gtk-doc

CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
        @if pkg dependencies check gnome-libs-\*; then \
                if pkg dependencies check ${DISTNAME}; then \
                        :; \
                else \
                        echo 1>&2 "Error: you must remove your old gnome-libs first"; \
                        exit 1; \
                fi; \
        fi;

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-libs; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gnome-libs/

.include <bsd.port.mk>
