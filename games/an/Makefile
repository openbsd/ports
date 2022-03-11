COMMENT=	fast anagram generator

V=		1.2
DISTNAME=	an_${V}.orig
PKGNAME=	an-${V}
CATEGORIES=	games

# GPLv2+
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://salsa.debian.org/pm/an

WANTLIB=	c icudata icui18n icuuc

MASTER_SITES=	${MASTER_SITE_DEBIAN:=main/a/an/}

LIB_DEPENDS=	textproc/icu4c,-main

MAKE_FLAGS+=	CC="${CC}" CFLAGS="${CFLAGS}"
# Overriding DESTDIR is not enough, their Makefile subdirectories
# don't respect our files hierarchy
FAKE_FLAGS+=	MANDIR="${FROOT}/man/man6" INSTALLDIR="${FROOT}/bin"

NO_TEST=	Yes

USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/an-${V}
FROOT=		${WRKINST}${PREFIX}

pre-configure:
	@perl -pi -e 's,/usr/dict/words,/usr/share/dict/words,g' \
		${WRKSRC}/an.6

.include <bsd.port.mk>
