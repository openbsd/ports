# $OpenBSD: Makefile,v 1.4 2001/09/18 15:18:52 naddy Exp $

COMMENT=		"GNOME Virtual File System"
V=			1.0.1
DISTNAME=		gnome-vfs-${V}
CATEGORIES=		devel
NEED_VERSION=   	1.455
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/gnome-vfs

LIB_DEPENDS=		gnome.36::x11/gnome/libs \
			xml.9::textproc/libxml1 \
			gconf-1::devel/gconf,db3 \
			cdda_paranoia.::audio/cdparanoia

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	autoconf
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/gtk-1.2 -D_POSIX_THREAD_SYSCALL_SOFT=1" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/gnome-vfs; \
        cp -r ${PREFIX}/../../etc/* ${PREFIX}/share/gnome-vfs/

.include <bsd.port.mk>
