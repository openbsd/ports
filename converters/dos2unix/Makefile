# $OpenBSD: Makefile,v 1.14 2015/11/23 19:26:49 jca Exp $

COMMENT=	convert DOS/MAC files to UNIX (line-endings/charset)

DISTNAME =	dos2unix-7.3.2

CATEGORIES=	converters

HOMEPAGE=	http://waterlan.home.xs4all.nl/dos2unix.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://waterlan.home.xs4all.nl/dos2unix/

MODULES=	devel/gettext

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
