# $OpenBSD: Makefile,v 1.41 2015/07/02 07:36:03 benoit Exp $

COMMENT =	creating & editing GIF images and animations

DISTNAME =	gifsicle-1.88
CATEGORIES =	graphics

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c ICE SM X11 m

HOMEPAGE =	http://www.lcdf.org/gifsicle/

MASTER_SITES =	${HOMEPAGE}/ \
		ftp://ftp.lcdf.org/pub/ \
		ftp://ftp.lcdf.org/pub/OLD-VERSIONS/

CONFIGURE_STYLE =	gnu
SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
