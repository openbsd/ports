COMMENT=		perl program that creates a music database via s-cdda

DISTNAME=		s-cdda-to-db-0.8.0
CATEGORIES=		audio
HOMEPAGE=		https://www.sdaoden.eu/code.html\#s-cdda-to-db

SITES=			https://ftp.sdaoden.eu/
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER=		Steffen Nurpmeso <steffen@sdaoden.eu>

# ISC
PERMIT_PACKAGE=		Yes

RUN_DEPENDS=		audio/s-cdda \
			textproc/p5-XML-Parser

MAKE_FILE=		makefile
MAKE_FLAGS=		MANDIR="${DESTDIR}${PREFIX}"/man/man1

NO_TEST=		Yes
NO_BUILD=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
