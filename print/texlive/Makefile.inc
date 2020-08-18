# $OpenBSD: Makefile.inc,v 1.23 2020/08/18 18:40:11 edd Exp $

CATEGORIES ?=	print
HOMEPAGE ?=	http://tug.org/texlive/
MAINTAINER ?=	Edd Barrett <edd@openbsd.org>

# http://tug.org/texlive/LICENSE.TL
PERMIT_PACKAGE ?=	Yes

EXTRACT_SUFX ?=		.tar.xz

V ?=		2020
DIST_V ?=	${V}0406

# Note: The TUG FTP server is frequently overloaded and doesn't work with
# ftp(1)'s keepalive implementation.
FETCH_CMD =	/usr/bin/ftp -V -m -C -k0
MASTER_SITES ?=	https://ftp.tu-chemnitz.de/pub/tug/historic/systems/texlive/${V}/ \
		ftp://tug.org/historic/systems/texlive/${V}/

PATCHORIG ?=	.origy
