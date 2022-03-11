COMMENT=	convert DOS/MAC files to UNIX (line-endings/charset)

DISTNAME =	dos2unix-7.4.2

CATEGORIES=	converters

HOMEPAGE=	https://waterlan.home.xs4all.nl/dos2unix.html
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c intl

MASTER_SITES=	https://waterlan.home.xs4all.nl/dos2unix/

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	devel/gettext,-runtime

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
