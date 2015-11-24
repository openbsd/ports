# $OpenBSD: Makefile,v 1.14 2015/11/24 09:11:03 jasper Exp $
# $RuOBSD: Makefile,v 1.7 2003/08/18 18:40:14 grange Exp $

COMMENT=		Bohlin's IrDA utilities

DISTNAME=		birda-1.1
REVISION=		1
CATEGORIES=		comms
MASTER_SITES=		https://distfiles.nl/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

FAKE_FLAGS=	BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man" \
		LIBDIR="${PREFIX}/lib" DEBUGLIBS=No

.include <bsd.port.mk>
