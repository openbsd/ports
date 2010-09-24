# $OpenBSD: Makefile.inc,v 1.1.1.1 2010/09/24 15:44:41 edd Exp $

CATEGORIES ?=	print
HOMEPAGE ?=	http://tug.org/texlive/
MAINTAINER ?=	Edd Barrett <edd@openbsd.org>

# http://tug.org/texlive/LICENSE.TL
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes
PERMIT_DISTFILES_CDROM ?=	Yes
PERMIT_DISTFILES_FTP ?=		Yes

EXTRACT_SUFX ?=		.tar.xz
EXTRACT_CASES +=	*.tar.xz) xzcat ${FULLDISTDIR}/$$archive | tar xf -;;
BUILD_DEPENDS +=	::archivers/xz

V ?=		2010
DIST_V ?=	${V}0722

MASTER_SITES ?=	ftp://ftp.tug.org/texlive/historic/${V}/
