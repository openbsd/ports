# $OpenBSD: Makefile,v 1.10 2012/07/08 19:24:18 steven Exp $

COMMENT =	utilities to read and parse Argus data

DISTNAME =	argus-clients-3.0.6.2
CATEGORIES =	net

HOMEPAGE =	http://qosient.com/argus/
MASTER_SITES =	${HOMEPAGE}/src/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	c m ncurses readline z

NO_REGRESS =	Yes

LIB_DEPENDS =	net/flow-tools

CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS +=	--with-libft=${LOCALBASE} \
			--without-mysql \
			--without-GeoIP \
			--without-sasl
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/config
BUILD_DEPENDS =	devel/bison
USE_GROFF =	Yes

MAKE_FLAGS =	CCOPT="${CFLAGS}"
FAKE_FLAGS =	docdir=${PREFIX}/share/doc/argus-clients/

post-extract:
	@find ${WRKSRC} -name '.gdb_history' -exec rm -f {} \;

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/argus/
		mv ${PREFIX}/argus/* ${PREFIX}/share/argus/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/argus-clients/
	cd ${WRKSRC}/support && tar cf - . | \
		tar -C ${PREFIX}/share/examples/argus-clients/ -xf -

.include <bsd.port.mk>
