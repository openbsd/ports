# $OpenBSD: Makefile.inc,v 1.4 2001/07/13 11:24:52 naddy Exp $

DIST_SUBDIR?=			amaya
CATEGORIES?=			www

EXTRACT_SUFX?=			.tgz

MAINTAINER?=			Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes

MASTER_SITES?=			http://www.w3.org/Amaya/Distribution/ \
				ftp://ftp.w3.org/pub/amaya/ \
				ftp://mirror.aarnet.edu.au/pub/amaya \
            			ftp://ftp.funet.fi/pub/mirrors/ftp.w3.org/pub/afs/w3.org/ftp/pub/amaya
