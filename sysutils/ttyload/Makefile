# $OpenBSD: Makefile,v 1.1.1.1 2013/12/24 13:06:22 jca Exp $

COMMENT =		load average history on a tty

DISTNAME =		ttyload-0.5.3

CATEGORIES =		sysutils

HOMEPAGE =		http://www.daveltd.com/src/util/ttyload/

MAINTAINER =		Brian Callahan <bcallah@devio.us>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		http://www.daveltd.com/src/util/ttyload/
EXTRACT_SUFX =		.tar.bz2

MAKE_FLAGS =		ARCHLINKS_FREEBSD=arch/OpenBSD \
			CC="${CC}" \
			OTHER_FLAGS="-pedantic -Wall -Werror ${CFLAGS}"

NO_TEST =		Yes

ALL_TARGET =		default

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ttyload ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/ttyload.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
