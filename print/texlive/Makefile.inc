# $OpenBSD: Makefile.inc,v 1.7 2011/06/01 18:53:52 jasper Exp $

CATEGORIES ?=	print
HOMEPAGE ?=	http://tug.org/texlive/
MAINTAINER ?=	Edd Barrett <edd@openbsd.org>

# http://tug.org/texlive/LICENSE.TL
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_CDROM ?=	Yes
PERMIT_DISTFILES_FTP ?=		Yes

EXTRACT_SUFX ?=		.tar.xz

V ?=		2010
DIST_V ?=	${V}0722

MASTER_SITES ?=	ftp://ftp.tug.org/texlive/historic/${V}/
PATCHORIG ?=	.origy
