# $OpenBSD: Makefile,v 1.7 2008/11/22 14:05:37 uwe Exp $

COMMENT=		bluetooth network libraries
DISTNAME=		bluetooth-libs-20081122
SHARED_LIBS=		bluetooth 2.0 \
			sdp 2.1

CATEGORIES=		devel net
MAINTAINER=		Uwe Stuehler <uwe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.bsdx.de/openbsd/distfiles/

MAKE_ENV=		LIBDIR=${TRUEPREFIX}/lib \
			MANDIR=${TRUEPREFIX}/man/cat \
			LIBbluetooth_VERSION=${LIBbluetooth_VERSION} \
			LIBsdp_VERSION=${LIBsdp_VERSION}
FAKE_FLAGS=		DEBUGLIBS=No
NO_REGRESS=		Yes

pre-build:
	@perl -pi -e "s,/etc,${SYSCONFDIR},g" \
	    ${WRKSRC}/libbluetooth/*.[ch3] \
	    ${WRKSRC}/libsdp/*.[ch3]

post-install:
	${INSTALL_DATA} ${WRKSRC}/libbluetooth/bluetooth.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libsdp/sdp.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bluetooth
	${INSTALL_DATA} ${WRKSRC}/examples/hosts \
	    ${PREFIX}/share/examples/bluetooth
	${INSTALL_DATA} ${WRKSRC}/examples/protocols \
	    ${PREFIX}/share/examples/bluetooth

.include <bsd.port.mk>
