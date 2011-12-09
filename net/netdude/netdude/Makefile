# $OpenBSD: Makefile,v 1.16 2011/12/09 14:45:06 jasper Exp $

COMMENT=	network traffic visualization and editing tool

DISTNAME=	netdude-0.4.8a
REVISION=	3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext

LIB_DEPENDS=	net/libnetdude/libnetdude \
		net/libpcapnav \
		devel/glib \
		devel/libtool,-ltdl \
		x11/gtk+

WANTLIB += X11 Xext Xi c gdk glib gmodule gtk ltdl m netdude pcap
WANTLIB += pcapnav xcb

USE_LIBTOOL=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc/netdude \
			--disable-gtk-doc \
			--datadir=${PREFIX}/lib
# Make sure it can find and use our libltdl.
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include/libltdl/"
CFLAGS+=		"-Dlt_ptr_t=lt_ptr"

.include <bsd.port.mk>
