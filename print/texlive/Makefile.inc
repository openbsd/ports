# $OpenBSD: Makefile.inc,v 1.16 2017/05/21 11:57:41 edd Exp $

CATEGORIES ?=	print
HOMEPAGE ?=	http://tug.org/texlive/
MAINTAINER ?=	Edd Barrett <edd@openbsd.org>

# http://tug.org/texlive/LICENSE.TL
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_FTP ?=		Yes

EXTRACT_SUFX ?=		.tar.xz

V ?=		2016
DIST_V ?=	${V}0523

# Note: The TUG FTP server is frequently overloaded
MASTER_SITES ?=	http://ftp.heanet.ie/pub/ftp.frugalware.org/pub/frugalware/frugalware-2.1/source/xapps-extra/texlive/ \
		ftp://ftp.tug.org/texlive/historic/${V}/ \
		https://paclan.it/distfiles/ \
		http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/${V}/

PATCHORIG ?=	.origy
