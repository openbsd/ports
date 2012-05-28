# $OpenBSD: Makefile,v 1.32 2012/05/28 15:29:58 jasper Exp $

COMMENT=	lists of the country, language and currency iso names

DISTNAME=	iso-codes-3.35

CATEGORIES=	devel

HOMEPAGE=	http://alioth.debian.org/projects/pkg-isocodes/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pkg-isocodes.alioth.debian.org/downloads/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

MODULES=	lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/gettext

post-extract:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/iso2pot.py

.include <bsd.port.mk>
