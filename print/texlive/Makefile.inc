# $OpenBSD: Makefile.inc,v 1.19 2019/01/20 11:17:30 edd Exp $

CATEGORIES ?=	print
HOMEPAGE ?=	http://tug.org/texlive/
MAINTAINER ?=	Edd Barrett <edd@openbsd.org>

# http://tug.org/texlive/LICENSE.TL
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_FTP ?=		Yes

EXTRACT_SUFX ?=		.tar.xz

V ?=		2018
DIST_V ?=	${V}0414

# Note: The TUG FTP server is frequently overloaded and doesn't work with
# ftp(1)'s keepalive implementation.
FETCH_CMD =	/usr/bin/ftp -V -m -C -k0
MASTER_SITES ?=	ftp://tug.org/historic/systems/texlive/${V}/

PATCHORIG ?=	.origy
