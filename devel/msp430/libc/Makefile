# $OpenBSD: Makefile,v 1.2 2011/05/09 09:02:12 jasper Exp $

COMMENT=		GNU libc for msp430

V=			ti_20110213
DISTNAME=		${TARGET}-libc-$V
PKGNAME=		${TARGET}-libc-${V:S/ti_//}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mspgcc4/}

RUN_DEPENDS=		devel/msp430/gcc>=4.4.5
BUILD_DEPENDS=		archivers/gtar \
			${RUN_DEPENDS}

MAKE_ENV=		PREFIX=${PREFIX}

TAR=			${LOCALBASE}/bin/gtar

WRKDIST=		${WRKDIR}/${DISTNAME}/src/

CONFIGURE_STYLE=	# This space intentionally left blank.

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/msp430-libc/
	${INSTALL_DATA} ${WRKSRC}/../doc/devheaders.txt \
		${PREFIX}/share/doc/msp430-libc/

.include <bsd.port.mk>
