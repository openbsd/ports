# $OpenBSD: Makefile,v 1.5 2005/11/09 01:25:38 jcs Exp $

COMMENT=	"graphical MIB browser"

DISTNAME=	mbrowse-0.3.1
CATEGORIES=	net
HOMEPAGE=	http://www.kill-9.org/mbrowse/

MASTER_SITES=	${HOMEPAGE}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c crypto gmodule iconv intl m

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-snmp-style=net \
		--with-snmp-prefix=${LOCALBASE} \
		--with-snmp-include=${LOCALBASE}/include \
		--with-snmp-lib=${LOCALBASE}/lib

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		glib.1.2::devel/glib \
		netsnmp.6.2::net/net-snmp

.include <bsd.port.mk>
