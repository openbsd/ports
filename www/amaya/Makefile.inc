# $OpenBSD: Makefile.inc,v 1.3 2000/10/22 14:03:53 espie Exp $

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
				ftp://mirror.aarnet.edu.au/pub/amaya
