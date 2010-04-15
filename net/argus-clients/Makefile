# $OpenBSD: Makefile,v 1.2 2010/04/15 19:16:42 steven Exp $

COMMENT=	utilities to read and parse Argus data

DISTNAME=	argus-clients-3.0.2
CATEGORIES=     net

HOMEPAGE=	http://qosient.com/argus/
MASTER_SITES=	http://qosient.com/argus/src/

MAINTAINER=	Steven Mestdagh <steven@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ncurses readline

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
BUILD_DEPENDS=	::devel/bison

MAKE_FLAGS=	CCOPT="${CFLAGS}"

post-extract:
	@find ${WRKSRC} -name '.gdb_history' -exec rm -f {} \;

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/argus/
		mv ${PREFIX}/argus/* ${PREFIX}/share/argus/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/argus-clients/
	cd ${WRKSRC}/support && tar cf - . | \
		tar -C ${PREFIX}/share/examples/argus-clients/ -xf -

.include <bsd.port.mk>
