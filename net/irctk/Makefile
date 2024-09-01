COMMENT =	graphical IRC client

V =		1.0.0
DISTNAME =	irctk-$V
CATEGORIES =	net
HOMEPAGE =	https://lab.abiscuola.com/irctk/
MAINTAINER =	Omar Polo <op@openbsd.org>

# ISC
PERMIT_PACKAGE = Yes

SITES =		https://lab.abiscuola.com/irctk/tarball/$V/

MODULES =	x11/tk
MODTK_VERSION =	8.6

CONFIGURE_STYLE = simple

BUILD_DEPENDS =	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTK_RUN_DEPENDS} \
		devel/tcllib

FAKE_FLAGS =	PREFIX="${DESTDIR}${PREFIX}"

NO_TEST =	Yes

# Install the extension in a place where they're not automatically
# loaded, yet they're convenient to be manually loaded from the interface.
# Ship the READMEs too but not the Makefiles
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/irctk/
	cp -R ${WRKSRC}/extensions ${PREFIX}/share/irctk/
	find ${PREFIX}/share/irctk/extensions -type f -name Makefile -delete

.include <bsd.port.mk>
