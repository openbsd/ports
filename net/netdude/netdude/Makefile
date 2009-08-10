# $OpenBSD: Makefile,v 1.9 2009/08/10 06:33:43 kili Exp $

COMMENT=	network traffic visualization and editing tool

DISTNAME=	netdude-0.4.8a
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/

MAINTAINER=	Rui Reis <rui@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext

LIB_DEPENDS=	netdude::net/libnetdude/libnetdude \
		pcapnav::net/libpcapnav \
		glib.>=1,gmodule.>=1::devel/glib \
		gdk,gtk::x11/gtk+

WANTLIB=		X11 Xau Xdmcp Xext Xi c m pcap pthread-stubs xcb

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc/netdude \
			--disable-gtk-doc --datadir=${PREFIX}/lib
.include <bsd.port.mk>
