# $OpenBSD: Makefile,v 1.10 2001/10/24 12:50:10 espie Exp $

COMMENT=		"GNOME Virtual File System"
V=			1.0.1
DISTNAME=		gnome-vfs-${V}
CATEGORIES=		devel x11/gnome
NEED_VERSION=   	1.473
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/gnome-vfs

PATCH_LIST=             ${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
                        ${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
                        patch-*

LIB_DEPENDS=		gnome.36::x11/gnome/libs \
			xml.9::textproc/libxml1 \
			gconf-1,gconf-gtk-1::devel/gconf,db3 \
			cdda_paranoia,cdda_interface::audio/cdparanoia \
			bz2::archivers/bzip2 \
			gthread::devel/glib


PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/gtk-1.2 -D_POSIX_THREAD_SYSCALL_SOFT=1" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-vfs; \
	cp -rp ${PREFIX}/../../etc/* ${PREFIX}/share/examples/gnome-vfs/

.include <bsd.port.mk>
