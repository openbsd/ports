# $OpenBSD: Makefile,v 1.17 2021/02/26 13:08:37 sthen Exp $

COMMENT=		Bohlin's IrDA utilities

DISTNAME=		birda-1.3
CATEGORIES=		comms
MASTER_SITES=		https://ftp.netbsd.org/pub/pkgsrc/distfiles/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c

FAKE_FLAGS=	BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man" \
		LIBDIR="${PREFIX}/lib" DEBUGLIBS=No

NO_TEST=	Yes

.include <bsd.port.mk>
