# $OpenBSD: Makefile.inc,v 1.2 2008/11/17 18:33:47 jasper Exp $

V?=			0.0.14.1

CATEGORIES+=		games devel

HOMEPAGE?=		http://www.ggzgamingzone.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES?=		http://mirrors.dotsrc.org/ggzgamingzone/ggz/$V/ \
			http://ftp.ggzgamingzone.org/pub/ggz/$V/

DIST_SUBDIR=		ggz

USE_LIBTOOL?=		Yes

CONFIGURE_STYLE?=	gnu
