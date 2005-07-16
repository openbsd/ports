# $OpenBSD: Makefile,v 1.1.1.1 2005/07/16 20:45:39 grange Exp $

COMMENT=		"bluetooth network libraries"
DISTNAME=		bluetooth-libs-20050716
CATEGORIES=		devel net
MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.erisiandiscord.de/pub/misc/

MAKE_ENV=		LIBDIR=${TRUEPREFIX}/lib MANDIR=${TRUEPREFIX}/man/cat
NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/libbluetooth/bluetooth.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libsdp/sdp.h ${PREFIX}/include

.include <bsd.port.mk>
