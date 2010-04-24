# $OpenBSD: Makefile,v 1.1.1.1 2010/04/24 16:34:20 jasper Exp $

COMMENT=		SNMP library based on glib2 and gnet

DISTNAME=		gsnmp-0.2.0
SHARED_LIBS +=  gsnmp           0.0              # .0.0
CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.ibr.cs.tu-bs.de/local/gsnmp/

WANTLIB += c glib-2.0 gthread-2.0 pcre pthread

MODULES=		devel/gettext

LIB_DEPENDS=		gnet-2.0::net/gnet

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
