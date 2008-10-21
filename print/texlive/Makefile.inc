# $OpenBSD: Makefile.inc,v 1.2 2008/10/21 20:57:57 steven Exp $

CATEGORIES?=	print
HOMEPAGE?=	http://tug.org/texlive/
MAINTAINER?=	Edd Barrett <vext01@gmail.com>

# http://tug.org/texlive/LICENSE.TL
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

V = 2008
MASTER_SITES =	http://students.dec.bmth.ac.uk/ebarrett/texlive/distfiles/
MASTER_SITES +=	ftp://ftp.tug.org/texlive/historic/${V}/
