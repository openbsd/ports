# $OpenBSD: Makefile,v 1.10 2010/04/24 16:37:45 jasper Exp $

COMMENT=		snmp command line utility

DISTNAME=		scli-0.3.1
CATEGORIES=		net

MASTER_SITES=		ftp://ftp.ibr.cs.tu-bs.de/pub/local/scli/	

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c glib-2.0 gmodule-2.0 gnet-2.0 gthread-2.0 m ncurses
WANTLIB += pthread readline z

MODULES=		devel/gettext

USE_GMAKE=		Yes

LIB_DEPENDS=		gsnmp::net/gsnmp \
			xml2::textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
