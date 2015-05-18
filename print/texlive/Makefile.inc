# $OpenBSD: Makefile.inc,v 1.12 2015/05/18 21:37:19 edd Exp $

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
		http://spacehopper.org/mirrors/
PATCHORIG ?=	.origy
