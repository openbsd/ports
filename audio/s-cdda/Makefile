COMMENT=		access information and track data of audio CDs

DISTNAME=		s-cdda-0.8.5
CATEGORIES=		audio
HOMEPAGE=		https://www.sdaoden.eu/code.html\#s-cdda

SITES=			https://ftp.sdaoden.eu/
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER=		Steffen Nurpmeso <steffen@sdaoden.eu>

# ISC
PERMIT_PACKAGE=		Yes

WANTLIB+=		c

MAKE_FILE=		makefile
MAKE_FLAGS+=		CFLAGS="${CFLAGS}" \
			MANDIR="${DESTDIR}${PREFIX}"/man/man1

NO_TEST=		Yes

.include <bsd.port.mk>
