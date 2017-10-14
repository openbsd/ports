# $OpenBSD: Makefile,v 1.19 2017/10/14 05:46:52 bcallah Exp $

COMMENT=	convert DOS/MAC files to UNIX (line-endings/charset)

DISTNAME =	dos2unix-7.4.0

CATEGORIES=	converters

HOMEPAGE=	http://waterlan.home.xs4all.nl/dos2unix.html
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c intl

MASTER_SITES=	http://waterlan.home.xs4all.nl/dos2unix/

BUILD_DEPENDS=	devel/gettext-tools

LIB_DEPENDS=	devel/gettext

MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	prefix="${PREFIX}" \
		docsubdir=dos2unix \
		man1dir="${PREFIX}/man/man1"

USE_GMAKE=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	rmdir ${PREFIX}/share/man

.include <bsd.port.mk>
