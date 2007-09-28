# $OpenBSD: Makefile,v 1.6 2007/09/28 09:55:41 steven Exp $

COMMENT=	lists of the country, language and currency iso names

DISTNAME=	iso-codes-1.0
PKGNAME=	${DISTNAME}p0

CATEGORIES=	devel

HOMEPAGE=	http://alioth.debian.org/projects/pkg-isocodes/
MASTER_SITES=	ftp://pkg-isocodes.alioth.debian.org/pub/pkg-isocodes/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

PYTHON_VER=	2.4

BUILD_DEPENDS=	python-expat-${PYTHON_VER}*:lang/python/${PYTHON_VER},-expat

FAKE_FLAGS=	DESTDIR=${WRKINST}  pkgconfigdir=${PREFIX}/lib/pkgconfig

post-extract:
	@perl -pi -e 's,/usr/bin/env python,${LOCALBASE}/bin/python${PYTHON_VER},' \
		${WRKSRC}/{iso2pot.py,iso_3166/iso3166tab.py}

.include <bsd.port.mk>
