# $OpenBSD: Makefile,v 1.12 2011/06/23 22:50:27 naddy Exp $
# $RuOBSD: Makefile,v 1.7 2003/08/18 18:40:14 grange Exp $

COMMENT=		Bohlin's IrDA utilities

DISTNAME=		birda-1.1
REVISION=		1
CATEGORIES=		comms
MASTER_SITES=		http://distfiles.nl/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

FAKE_FLAGS=	BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man" \
		LIBDIR="${PREFIX}/lib" DEBUGLIBS=No

.include <bsd.port.mk>
