# $OpenBSD: Makefile,v 1.5 2004/08/10 09:38:34 xsa Exp $

COMMENT=		"snmp command line utility"

VERSION=		0.2.12
DISTNAME=		scli-${VERSION}
CATEGORIES=		net

HOMEPAGE=		http://www.ibr.cs.tu-bs.de/projects/scli/

MASTER_SITES=		ftp://ftp.ibr.cs.tu-bs.de/pub/local/scli/	

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		converters/libiconv
LIB_DEPENDS=		glib.1.2,gmodule.1.2::devel/glib \
			xml2::textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
