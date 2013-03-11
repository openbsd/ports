# $OpenBSD: Makefile.inc,v 1.10 2013/03/11 11:37:54 espie Exp $

CATEGORIES ?=	print
HOMEPAGE ?=	http://tug.org/texlive/
MAINTAINER ?=	Edd Barrett <edd@openbsd.org>

# http://tug.org/texlive/LICENSE.TL
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_FTP ?=		Yes

EXTRACT_SUFX ?=		.tar.xz

V ?=		2012
DIST_V ?=	${V}0701

MASTER_SITES ?=	ftp://ftp.tug.org/texlive/historic/${V}/ \
		http://spacehopper.org/mirrors/
PATCHORIG ?=	.origy
