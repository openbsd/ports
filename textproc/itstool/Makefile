PKG_ARCH=		*

COMMENT=		translate XML documents with PO files

DISTNAME=		itstool-2.0.7
REVISION=		6

CATEGORIES=		textproc

HOMEPAGE=		http://itstool.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

SITES=			http://files.itstool.org/itstool/
EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python

BUILD_DEPENDS=		textproc/py-lxml
RUN_DEPENDS=		textproc/py-lxml

CONFIGURE_STYLE=	autoreconf

AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.18

.include <bsd.port.mk>
