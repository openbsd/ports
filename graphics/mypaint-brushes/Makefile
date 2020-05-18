# $OpenBSD: Makefile,v 1.5 2020/05/18 14:48:05 sthen Exp $

COMMENT =	brushes used by software using libmypaint

# at least as of gimp-2.10.18, mypaint-brushes-2.x are not yet supported
V =		1.3.1
DISTNAME =	mypaint-brushes-$V
EXTRACT_SUFX =	.tar.xz

CATEGORIES =	graphics

# GPLv2+
PERMIT_PACKAGE = Yes

MASTER_SITES =	https://github.com/mypaint/mypaint-brushes/releases/download/v$V/

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

.include <bsd.port.mk>
