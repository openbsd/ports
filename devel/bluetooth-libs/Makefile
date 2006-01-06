# $OpenBSD: Makefile,v 1.4 2006/01/06 13:38:06 bernd Exp $

COMMENT=		"bluetooth network libraries"
DISTNAME=		bluetooth-libs-20050716
SHARED_LIBS=		bluetooth 	1.0 \
			sdp		1.0

CATEGORIES=		devel net
MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.disorder.ru/openbsd/distfiles/

MAKE_ENV=		LIBDIR=${TRUEPREFIX}/lib MANDIR=${TRUEPREFIX}/man/cat \
			LIBbluetooth_VERSION=${LIBbluetooth_VERSION} \
			LIBsdp_VERSION=${LIBsdp_VERSION}
FAKE_FLAGS=		DEBUGLIBS=No
NO_REGRESS=		Yes

pre-build:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR},g" \
	    ${WRKSRC}/libbluetooth/*.[ch3]

post-install:
	${INSTALL_DATA} ${WRKSRC}/libbluetooth/bluetooth.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libsdp/sdp.h ${PREFIX}/include

.include <bsd.port.mk>
