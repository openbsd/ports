# $OpenBSD: Makefile,v 1.3 2002/11/22 02:37:37 margarida Exp $

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

# optimizer bug in gcc 2.95
.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* gcc-patch-*
.endif

MODULES=		iconv
LIB_DEPENDS=		glib.1.2,gmodule.1.2::devel/glib \
			xml2::textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
