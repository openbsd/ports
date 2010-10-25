# $OpenBSD: Makefile,v 1.1.1.1 2010/10/25 10:14:53 pea Exp $

COMMENT = 	network traffic monitor

DISTNAME = 	vnstat-1.10
CATEGORIES = 	net sysutils

HOMEPAGE = 	http://humdi.net/vnstat/

MASTER_SITES = ${HOMEPAGE}

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP = 	Yes

WANTLIB = 	c m gd

LIB_DEPENDS = 	::graphics/gd

USE_GMAKE = 	Yes

NO_REGRESS = 	Yes

INSTALL_TARGET = bsdinstall

LDFLAGS += 	-L${LOCALBASE}/lib -L/usr/X11R6/lib
MAKE_FLAGS = 	CC="${CC}" CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vnstat
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/vnstat/README.OpenBSD
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/vnstat/README.OpenBSD

.include <bsd.port.mk>
