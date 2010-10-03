# $OpenBSD: Makefile,v 1.1.1.1 2010/10/03 21:13:27 armani Exp $

COMMENT =	userland driver for Dream Link USB LED Message Board

DISTNAME =	dcled-1.9
EXTRACT_SUFX =	.tgz

CATEGORIES =	sysutils

HOMEPAGE =	http://www.last-outpost.com/~malakai/dcled/

MAINTAINER =	Jonathan Armani <armani@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.last-outpost.com/~malakai/dcled/

WANTLIB += 	c hid

LIB_DEPENDS = 	::devel/libhid

USE_GMAKE = 	Yes
MAKE_FILE =	makefile

.include <bsd.port.mk>
