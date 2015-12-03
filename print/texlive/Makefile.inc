# $OpenBSD: Makefile.inc,v 1.13 2015/12/03 21:24:31 sthen Exp $

CATEGORIES ?=	print
HOMEPAGE ?=	http://tug.org/texlive/
MAINTAINER ?=	Edd Barrett <edd@openbsd.org>

# http://tug.org/texlive/LICENSE.TL
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_FTP ?=		Yes

EXTRACT_SUFX ?=		.tar.xz

V ?=		2014
DIST_V ?=	${V}0525

MASTER_SITES ?=	ftp://ftp.tug.org/texlive/historic/${V}/ \
		https://spacehopper.org/mirrors/
PATCHORIG ?=	.origy
