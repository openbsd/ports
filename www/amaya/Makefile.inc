# $OpenBSD: Makefile.inc,v 1.1.1.1 2000/04/11 20:08:46 rohee Exp $

DIST_SUBDIR?=			amaya
CATEGORIES?=			www

EXTRACT_SUFX?=			.tgz

MAINTAINER?=			rohee@openbsd.org

PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes

MASTER_SITES=			http://www.w3.org/Amaya/Distribution/ \
				ftp://ftp.w3.org/pub/amaya/ \
				ftp://mirror.aarnet.edu.au/pub/amaya
