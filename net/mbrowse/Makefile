# $OpenBSD: Makefile,v 1.2 2004/10/03 18:41:36 jcs Exp $

COMMENT=	"graphical MIB browser"

DISTNAME=	mbrowse-0.3.1
CATEGORIES=	net
HOMEPAGE=	http://www.kill-9.org/mbrowse/

MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Joshua Stein <jcs@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-snmp-style=ucd \
		--with-snmp-prefix=${LOCALBASE} \
		--with-snmp-include=${LOCALBASE}/include \
		--with-snmp-lib=${LOCALBASE}/lib

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		glib.1.2::devel/glib \
		snmp.42::net/ucd-snmp

.include <bsd.port.mk>
