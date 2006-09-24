# $OpenBSD: Makefile,v 1.5 2006/09/24 19:02:46 grange Exp $
# $RuOBSD: Makefile,v 1.7 2003/08/18 18:40:14 grange Exp $

COMMENT=		"Bohlin's IrDA utilities"

DISTNAME=		birda-1.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		comms
MASTER_SITES=		ftp://ftp.augustsson.net/pub/netbsd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

FAKE_FLAGS=	PREFIX="${LOCALBASE}" MANDIR="${LOCALBASE}/man/cat" \
		LIBDIR="${LOCALBASE}/lib" DEBUGLIBS=No

.include <bsd.port.mk>
