# $OpenBSD: Makefile,v 1.11 2011/03/10 17:28:35 jasper Exp $
# $RuOBSD: Makefile,v 1.7 2003/08/18 18:40:14 grange Exp $

COMMENT=		Bohlin's IrDA utilities

DISTNAME=		birda-1.1
REVISION=		0
CATEGORIES=		comms
MASTER_SITES=		http://distfiles.nl/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

FAKE_FLAGS=	PREFIX="${LOCALBASE}" MANDIR="${LOCALBASE}/man/cat" \
		LIBDIR="${LOCALBASE}/lib" DEBUGLIBS=No

.include <bsd.port.mk>
