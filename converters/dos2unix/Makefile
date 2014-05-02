# $OpenBSD: Makefile,v 1.6 2014/05/02 13:43:24 benoit Exp $

COMMENT=	convert DOS/MAC files to UNIX (line-endings/charset)

DISTNAME =	dos2unix-6.0.5

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
NO_TEST=	Yes

do-configure:
	perl -pi -e 's,/usr/local,${LOCALBASE},g' ${WRKSRC}/Makefile

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	rmdir ${PREFIX}/share/man

.include <bsd.port.mk>
