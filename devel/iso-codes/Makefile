# $OpenBSD: Makefile,v 1.16 2009/08/07 11:59:13 jasper Exp $

COMMENT=	lists of the country, language and currency iso names

DISTNAME=	iso-codes-3.10.2

CATEGORIES=	devel

HOMEPAGE=	http://alioth.debian.org/projects/pkg-isocodes/
MASTER_SITES=	ftp://pkg-isocodes.alioth.debian.org/pub/pkg-isocodes/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

MODULES=	lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS=	::devel/gettext

FAKE_FLAGS=	pkgconfigdir=${PREFIX}/lib/pkgconfig

post-extract:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/iso2pot.py

.include <bsd.port.mk>
