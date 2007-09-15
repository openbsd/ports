# $OpenBSD: Makefile,v 1.9 2007/09/15 22:36:59 merdely Exp $

COMMENT=		snmp command line utility

VERSION=		0.2.12
DISTNAME=		scli-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://www.ibr.cs.tu-bs.de/projects/scli/

MASTER_SITES=		ftp://ftp.ibr.cs.tu-bs.de/pub/local/scli/	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses readline z 

MODULES=		converters/libiconv
LIB_DEPENDS=		glib.>=1.2,gmodule.>=1.2::devel/glib \
			xml2::textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
