BROKEN =	Needs upstream to update the old bundled OpenSSH source

V =		0.8.0
COMMENT =	tools for using PIV tokens as an SSH agent, encryption, etc.
DISTNAME =	pivy-$V
REVISION =	0

HOMEPAGE =	https://github.com/arekinath/pivy

MASTER_SITES =	https://github.com/arekinath/pivy/releases/download/v$V/

CATEGORIES =	security

MAINTAINER =	Jonathan Matthew <jmatthew@openbsd.org>

# MPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c edit crypto pcsclite z

LIB_DEPENDS =		security/pcsc-lite
RUN_DEPENDS =		security/ccid

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_FLAGS =		CC="${CC}" \
			COPTFLAGS="${CFLAGS}" \
			prefix=${PREFIX}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pivy
	${INSTALL_DATA} ${WRKSRC}/README.adoc ${PREFIX}/share/doc/pivy
			    

.include <bsd.port.mk>
