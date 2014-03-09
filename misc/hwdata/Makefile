# $OpenBSD: Makefile,v 1.3 2014/03/09 22:15:38 ajacoutot Exp $

COMMENT=		hardware identification and configuration data

DISTNAME=		hwdata-0.261
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		misc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://git.fedorahosted.org/git/hwdata.git

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://fedorahosted.org/releases/h/w/hwdata/

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

# see ${WRKSRC}/Makefile
FILES=		pci.ids usb.ids oui.txt pnp.ids
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/hwdata
.for i in ${FILES}
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/hwdata
.endfor

.include <bsd.port.mk>
