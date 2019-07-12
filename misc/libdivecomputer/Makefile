# $OpenBSD: Makefile,v 1.2 2019/07/12 20:47:51 sthen Exp $

COMMENT =	library for communication with dive computers

DISTNAME =	libdivecomputer-0.6.0

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
CONFIGURE_ARGS = 	--without-libusb --without-hidapi --without-bluez
# Mandoc is only used to generate HTML pages, which are useless since
# we install the mdoc(7) sources, so pretend we do not have mandoc.
CONFIGURE_ENV =		ac_cv_prog_DOXYGEN= ac_cv_prog_MANDOC=

# Remove obvious third-party files
# that have no author information and no license.
post-extract:
	rm ${WRKSRC}/src/aes.{c,h}

.include <bsd.port.mk>
