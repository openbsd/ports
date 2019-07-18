# $OpenBSD: Makefile,v 1.3 2019/07/18 10:42:49 sthen Exp $

COMMENT =	library for communication with dive computers

DISTNAME =	libdivecomputer-0.6.0
REVISION =	0

SHARED_LIBS =	divecomputer	0.0

CATEGORIES =	misc

HOMEPAGE =	https://www.libdivecomputer.org/

MAINTAINER =	Kristaps Dzonsons <kristaps@bsd.lv>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m

MASTER_SITES =		https://www.libdivecomputer.org/releases/

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-libusb \
			--without-hidapi \
			--without-bluez
# Mandoc is only used to generate HTML pages, which are useless since
# we install the mdoc(7) sources, so pretend we do not have mandoc.
CONFIGURE_ENV =		ac_cv_prog_DOXYGEN= ac_cv_prog_MANDOC=

.include <bsd.port.mk>
