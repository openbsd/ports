V =		0.11.0
COMMENT =	tools for using PIV tokens as an SSH agent, encryption, etc.
DISTNAME =	pivy-$V

HOMEPAGE =	https://github.com/arekinath/pivy

MASTER_SITES =	https://github.com/arekinath/pivy/releases/download/v$V/

CATEGORIES =	security

MAINTAINER =	Jonathan Matthew <jmatthew@openbsd.org>

# MPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c edit crypto pcsclite util z

MODULES =		gnu
MODGNU_CONFIG_GUESS_DIRS = openssh

LIB_DEPENDS =		security/pcsc-lite
RUN_DEPENDS =		security/ccid

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_FLAGS =		CC="${CC}" \
			COPTFLAGS="${CFLAGS}" \
			prefix=${PREFIX} \
			JSONC_VER=""

post-extract:
	rm -Rf ${WRKDIST}/libressl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pivy
	${INSTALL_DATA} ${WRKSRC}/README.adoc ${PREFIX}/share/doc/pivy

.include <bsd.port.mk>
