# $OpenBSD: Makefile,v 1.73 2019/11/13 18:23:19 jasper Exp $

COMMENT=	lists of the country, language and currency iso names

V =		4.4
DISTNAME=	iso-codes-iso-codes-$V
PKGNAME =	iso-codes-$V
CATEGORIES=	devel

HOMEPAGE=	https://salsa.debian.org/iso-codes-team/iso-codes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MASTER_SITES =	https://salsa.debian.org/iso-codes-team/iso-codes/-/archive/iso-codes-$V/

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=bin/validate_json_data.py \
		bin/xml_from_json.py \
		bin/pot_from_json.py \
		bin/check_valid_utf8.py

BUILD_DEPENDS=	devel/gettext,-tools

# hardcodes python3, which isn't needed as the script already has the x bit set
post-extract:
	sed -i 's,^\([[:space:]]\)python3 ,\1,' ${WRKSRC}/*/Makefile.in

.include <bsd.port.mk>
