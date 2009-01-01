# $OpenBSD: Makefile,v 1.1.1.1 2009/01/01 04:38:49 kevlo Exp $

COMMENT=	provides an interface roughly equivalent to Xlib

DISTNAME=	X11-Protocol-0.56

CATEGORIES=	x11

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

REGRESS_FLAGS=	DISPLAY="${DISPLAY}" XAUTHORITY="${HOME}/.Xauthority"

USE_X11=	Yes

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
