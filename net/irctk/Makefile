COMMENT =	graphical IRC client

V =		1.1.0
DISTNAME =	irctk-$V
REVISION =	1
CATEGORIES =	net
HOMEPAGE =	https://lab.abiscuola.com/irctk/
MAINTAINER =	Omar Polo <op@openbsd.org>

# ISC
PERMIT_PACKAGE = Yes

SITES =		https://lab.abiscuola.com/irctk/tarball/$V/

MODULES =	x11/tk
MODTK_VERSION =	8.6

WANTLIB += c curl

CONFIGURE_STYLE = simple

BUILD_DEPENDS =	${MODTK_BUILD_DEPENDS}
LIB_DEPENDS =	net/curl
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}

FAKE_FLAGS =	PREFIX="${DESTDIR}${PREFIX}"

NO_TEST =	Yes

CFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib

CONFIGURE_ENV += CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

post-configure:
	cd ${WRKSRC}/transports/fossil && \
	    ${SETENV} ${CONFIGURE_ENV} ./configure

post-build:
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-C ${WRKSRC}/transports/fossil ircfossil

# Install the extension in a place where they're not automatically
# loaded, yet they're convenient to be manually loaded from the interface.
# Ship the READMEs too but not the Makefiles
# Install the fossil transport too.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/irctk/
	cp -R ${WRKSRC}/extensions ${PREFIX}/share/irctk/
	find ${PREFIX}/share/irctk/extensions -type f -name Makefile -delete
	${INSTALL_PROGRAM} ${WRKSRC}/transports/fossil/ircfossil ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/transports/fossil/ircfossil.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
