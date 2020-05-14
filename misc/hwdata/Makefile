# $OpenBSD: Makefile,v 1.59 2020/05/14 12:23:41 ajacoutot Exp $

COMMENT=		hardware identification and configuration data

GH_ACCOUNT=		vcrhonek
GH_PROJECT=		hwdata
GH_TAGNAME=		v0.335

CATEGORIES=		misc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

# grep ^IDFILES ${WRKSRC}/Makefile
IDFILES=		pci.ids usb.ids oui.txt iab.txt pnp.ids
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/hwdata
.for i in ${IDFILES}
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/hwdata
.endfor

.include <bsd.port.mk>
