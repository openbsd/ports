# $OpenBSD: Makefile,v 1.3 2006/08/03 23:15:58 espie Exp $

COMMENT=	"network traffic visualization and editing tool"

DISTNAME=	netdude-0.4.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/

MAINTAINER=	Markus Friedl <markus@openbsd.org> \
		Michael Coulter <mjc@openbsd.org>

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

WANTLIB=		Xi X11 m c Xext pcap

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc/netdude \
			--disable-gtk-doc --datadir=${PREFIX}/lib
.include <bsd.port.mk>
