# $OpenBSD: Makefile,v 1.1.1.1 2005/05/27 23:51:07 mjc Exp $

COMMENT=	"network traffic visualization and editing tool"

DISTNAME=	netdude-0.4.6
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
		glib.1,gmodule.1::devel/glib \
		gdk,gtk::x11/gtk+

WANTLIB=		Xi X11 m c Xext pcap

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-gtk-doc --with-html-dir=${PREFIX}/share/doc/netdude

.include <bsd.port.mk>
