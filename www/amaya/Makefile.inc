# $OpenBSD: Makefile.inc,v 1.10 2010/11/22 08:36:47 espie Exp $

DIST_SUBDIR?=			amaya
CATEGORIES?=			www

EXTRACT_SUFX?=			.tgz

# BSD-like, but missing distribution grant
# dictionaries are covered by amaya license
PERMIT_PACKAGE_CDROM?=		may not distribute
PERMIT_PACKAGE_FTP?=		may not distribute
PERMIT_DISTFILES_CDROM?=	may not distribute
PERMIT_DISTFILES_FTP?=		may not distribute

MASTER_SITES?=			http://www.w3.org/Amaya/Distribution/ \
				ftp://ftp.w3.org/pub/amaya/ \
				ftp://mirror.aarnet.edu.au/pub/amaya/ \
            			ftp://ftp.funet.fi/pub/mirrors/ftp.w3.org/pub/afs/w3.org/ftp/pub/amaya/

DICT_RUN_DEPENDS?=		www/amaya/browser

dict_install_frag=	\
	${INSTALL_DATA_DIR} ${PREFIX}/Amaya/dicopar; \
	${INSTALL_DATA} ${WRKDIR}/${DICNAME}.dic ${PREFIX}/Amaya/dicopar
