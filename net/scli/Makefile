# $OpenBSD: Makefile,v 1.15 2012/05/23 07:31:46 jasper Exp $

COMMENT=		snmp command line utility

DISTNAME=		scli-0.4.0
CATEGORIES=		net

MASTER_SITES=		ftp://ftp.ibr.cs.tu-bs.de/pub/local/scli/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c glib-2.0 gmodule-2.0 gnet-2.0 gthread-2.0 m ncurses
WANTLIB += pthread readline z gsnmp xml2

MODULES=		devel/gettext

USE_GMAKE=		Yes
USE_GROFF =		Yes

LIB_DEPENDS=		net/gsnmp>=0.3.0 \
			textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
