# $OpenBSD: Makefile,v 1.68 2019/01/06 14:50:49 danj Exp $

COMMENT=	lists of the country, language and currency iso names

DISTNAME=	iso-codes-3.77

CATEGORIES=	devel

HOMEPAGE=	https://salsa.debian.org/iso-codes-team/iso-codes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>
REVISION =	1

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://pkg-isocodes.alioth.debian.org/downloads/
EXTRACT_SUFX=	.tar.xz

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=bin/validate_json_data.py \
		bin/xml_from_json.py \
		bin/pot_from_json.py \
		bin/check_valid_utf8.py

BUILD_DEPENDS=	devel/gettext-tools

# hardcodes python3, which isn't needed as the script already has the x bit set
post-extract:
	sed -i 's,^\([[:space:]]\)python3 ,\1,' ${WRKSRC}/*/Makefile.in

.include <bsd.port.mk>
