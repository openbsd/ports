COMMENT =	simple gemini server
DISTNAME =	gmid-2.1.1

CATEGORIES =	net

HOMEPAGE =	https://gmid.omarpolo.com/

MAINTAINER =	Omar Polo <op@openbsd.org>

# ISC
PERMIT_PACKAGE = Yes

# uses pledge()
WANTLIB += c crypto event ssl tls util

SITES = 	https://ftp.omarpolo.com/

CONFIGURE_STYLE = simple

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gmid
	${INSTALL_DATA} ${FILESDIR}/gmid.conf ${PREFIX}/share/examples/gmid

.include <bsd.port.mk>
