# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:29 espie Exp $

COMMENT =	userland driver for Dream Link USB LED Message Board

DISTNAME =	dcled-1.9
REVISION =	0
EXTRACT_SUFX =	.tgz

CATEGORIES =	sysutils

HOMEPAGE =	http://www.last-outpost.com/~malakai/dcled/

MAINTAINER =	Jonathan Armani <armani@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://www.last-outpost.com/~malakai/dcled/

WANTLIB += 	c hid usb

LIB_DEPENDS = 	devel/libhid

NO_TEST=	Yes


do-build:
	cd ${WRKSRC} && \
	${CC} ${CFLAGS} `pkg-config --cflags --libs libhid` dcled.c -o dcled

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dcled ${PREFIX}/bin

.include <bsd.port.mk>
