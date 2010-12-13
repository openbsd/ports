# $OpenBSD: Makefile,v 1.2 2010/12/13 22:22:15 jasper Exp $

COMMENT=		GNU debugger for msp430

V=			7.1
DISTNAME=		gdb-$V
PKGNAME=		${TARGET}-${DISTNAME}

MASTER_SITES=		${MASTER_SITE_GNU:=gdb/}
PATCHFILES=		gdb-${V}.patch:0

DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			${TARGET}-gdb.tar.gz:0

RUN_DEPENDS=		devel/msp430/binutils \
			devel/msp430/gcc
BUILD_DEPENDS=		${RUN_DEPENDS}

WANTLIB=		c expat m ncurses z

CONFIGURE_ARGS+=	--disable-werror

NO_REGRESS=		Yes

# Move the mspgcc4 config files into place.
post-extract:
	cp -r ${WRKDIR}/{gdb,sim}/ ${WRKSRC}

.include <bsd.port.mk>
