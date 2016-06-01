# $OpenBSD: Makefile.inc,v 1.14 2016/06/01 12:46:29 edd Exp $

CATEGORIES ?=	print
HOMEPAGE ?=	http://tug.org/texlive/
MAINTAINER ?=	Edd Barrett <edd@openbsd.org>

# http://tug.org/texlive/LICENSE.TL
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_FTP ?=		Yes

EXTRACT_SUFX ?=		.tar.xz

V ?=		2015
DIST_V ?=	${V}0523

MASTER_SITES ?=	ftp://ftp.tug.org/texlive/historic/${V}/ \
		https://spacehopper.org/mirrors/
PATCHORIG ?=	.origy
