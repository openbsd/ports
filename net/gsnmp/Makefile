# $OpenBSD: Makefile,v 1.6 2012/05/21 18:22:36 jasper Exp $

COMMENT=		SNMP library based on glib2 and gnet

DISTNAME=		gsnmp-0.3.0
SHARED_LIBS +=  gsnmp           0.0              # .0.0
CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.ibr.cs.tu-bs.de/local/gsnmp/

WANTLIB += 		c glib-2.0 gthread-2.0 pcre pthread gnet-2.0

MODULES=		devel/gettext

LIB_DEPENDS=		net/gnet

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
