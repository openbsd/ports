# $OpenBSD: Makefile,v 1.3 2011/04/27 17:30:18 jasper Exp $

COMMENT=		GNU debugger for msp430

VERSION=		7.1
DISTNAME=		gdb-${VERSION}
PKGNAME=		${TARGET}-${DISTNAME}

MASTER_SITES=		${MASTER_SITE_GNU:=gdb/}
PATCHFILES=		gdb-${VERSION}.patch:0

DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			gdb-${VERSION}-config.tar.gz:0

RUN_DEPENDS=		devel/msp430/binutils \
			devel/msp430/gcc
BUILD_DEPENDS=		${RUN_DEPENDS}

WANTLIB=		c expat m ncurses z

CONFIGURE_ARGS+=	--disable-werror

NO_REGRESS=		Yes

# Move the mspgcc4 config files into place.
post-extract:
	cp -r ${WRKDIR}/gdb-${VERSION}-config/{gdb,sim}/ ${WRKSRC}

.include <bsd.port.mk>
