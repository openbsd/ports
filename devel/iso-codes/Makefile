# $OpenBSD: Makefile,v 1.55 2016/03/03 09:37:29 jasper Exp $

COMMENT=	lists of the country, language and currency iso names

DISTNAME=	iso-codes-3.66

CATEGORIES=	devel

HOMEPAGE=	http://alioth.debian.org/projects/pkg-isocodes/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://pkg-isocodes.alioth.debian.org/downloads/
EXTRACT_SUFX=	.tar.xz

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=check_valid_utf8.py iso2pot.py

BUILD_DEPENDS=	devel/gettext-tools

# hardcodes python3, which isn't needed as the script already has the x bit set
post-extract:
	sed -i 's,^\([[:space:]]\)python3 ,\1,' ${WRKSRC}/*/Makefile.in

.include <bsd.port.mk>
