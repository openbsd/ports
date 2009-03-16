# $OpenBSD: Makefile,v 1.9 2009/03/16 21:29:34 sthen Exp $

COMMENT=	graphical MIB browser

DISTNAME=	mbrowse-0.3.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net
HOMEPAGE=	http://www.kill-9.org/mbrowse/

MASTER_SITES=	${HOMEPAGE}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xi c iconv intl m

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-snmp-style=net \
		--with-snmp-prefix=${LOCALBASE} \
		--with-snmp-include=${LOCALBASE}/include \
		--with-snmp-lib=${LOCALBASE}/lib

LIB_DEPENDS=	gtk.>=1.2,gdk.>=1.2::x11/gtk+ \
		gmodule,glib.>=1.2::devel/glib \
		netsnmp.>=6.2::net/net-snmp

.include <bsd.port.mk>
