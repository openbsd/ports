# $OpenBSD: Makefile,v 1.40 2014/12/18 10:44:45 benoit Exp $

COMMENT =	creating & editing GIF images and animations

DISTNAME =	gifsicle-1.87
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
