# $OpenBSD: Makefile,v 1.3 2005/12/16 19:29:55 alek Exp $

COMMENT=		"bluetooth network libraries"
DISTNAME=		bluetooth-libs-20050716
CATEGORIES=		devel net
MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.disorder.ru/openbsd/distfiles/

MAKE_ENV=		LIBDIR=${TRUEPREFIX}/lib MANDIR=${TRUEPREFIX}/man/cat
FAKE_FLAGS=		DEBUGLIBS=No
NO_REGRESS=		Yes

pre-build:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR},g" \
	    ${WRKSRC}/libbluetooth/*.[ch3]

post-install:
	${INSTALL_DATA} ${WRKSRC}/libbluetooth/bluetooth.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libsdp/sdp.h ${PREFIX}/include

.include <bsd.port.mk>
