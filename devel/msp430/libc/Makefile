# $OpenBSD: Makefile,v 1.1.1.1 2010/12/01 09:06:53 jasper Exp $

COMMENT=		GNU libc for msp430

V=			20101113
DISTNAME=		${TARGET}-libc-$V

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mspgcc4/}
#PATCHFILES=		msp430-libc.patch:0

RUN_DEPENDS=		devel/msp430/binutils \
			devel/msp430/gcc
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		PREFIX=${PREFIX}

WRKDIST=		${WRKDIR}/${DISTNAME}/src/

CONFIGURE_STYLE=	# This space intentionally left blank.

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/msp430-libc/
	${INSTALL_DATA} ${WRKSRC}/../doc/devheaders.txt \
		${PREFIX}/share/doc/msp430-libc/

.include <bsd.port.mk>
