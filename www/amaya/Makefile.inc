# $OpenBSD: Makefile.inc,v 1.6 2001/11/13 22:13:24 espie Exp $

DIST_SUBDIR?=			amaya
CATEGORIES?=			www

EXTRACT_SUFX?=			.tgz

MAINTAINER?=			Heikki Korpela <heko@openbsd.org>

PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes

MASTER_SITES?=			http://www.w3.org/Amaya/Distribution/ \
				ftp://ftp.w3.org/pub/amaya/ \
				ftp://mirror.aarnet.edu.au/pub/amaya/ \
            			ftp://ftp.funet.fi/pub/mirrors/ftp.w3.org/pub/afs/w3.org/ftp/pub/amaya/

DICT_RUN_DEPENDS?=		:amaya-*:www/amaya/browser

dict_install_frag=	\
	${INSTALL_DATA_DIR} ${PREFIX}/Amaya/dicopar; \
	${INSTALL_DATA} ${WRKDIR}/${DICNAME}.dic ${PREFIX}/Amaya/dicopar
