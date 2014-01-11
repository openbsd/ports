# $OpenBSD: Makefile.inc,v 1.11 2014/01/11 18:46:52 edd Exp $

CATEGORIES ?=	print
HOMEPAGE ?=	http://tug.org/texlive/
MAINTAINER ?=	Edd Barrett <edd@openbsd.org>

# http://tug.org/texlive/LICENSE.TL
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_FTP ?=		Yes

EXTRACT_SUFX ?=		.tar.xz

V ?=		2013
DIST_V ?=	${V}0530

MASTER_SITES ?=	ftp://ftp.tug.org/texlive/historic/${V}/ \
		http://spacehopper.org/mirrors/
PATCHORIG ?=	.origy
