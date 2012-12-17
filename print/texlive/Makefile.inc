# $OpenBSD: Makefile.inc,v 1.9 2012/12/17 20:28:04 edd Exp $

CATEGORIES ?=	print
HOMEPAGE ?=	http://tug.org/texlive/
MAINTAINER ?=	Edd Barrett <edd@openbsd.org>

# http://tug.org/texlive/LICENSE.TL
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_CDROM ?=	Yes
PERMIT_DISTFILES_FTP ?=		Yes

EXTRACT_SUFX ?=		.tar.xz

V ?=		2012
DIST_V ?=	${V}0701

MASTER_SITES ?=	ftp://ftp.tug.org/texlive/historic/${V}/ \
		http://spacehopper.org/mirrors/
PATCHORIG ?=	.origy
