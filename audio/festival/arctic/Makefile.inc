# $OpenBSD: Makefile.inc,v 1.2 2006/02/03 19:42:44 steven Exp $

V?=		1.95
PKGNAME?=	${DISTNAME}-20040804
CATEGORIES=	audio
MASTER_SITES?=	http://www.cstr.ed.ac.uk/downloads/festival/${V}/ \
		http://festvox.org/packed/festival/${V}/
DIST_SUBDIR?=	festival/${PKGNAME}

# BSD-like:
# festvox_cmu_us_awb_arctic_hts
# festvox_cmu_us_bdl_arctic_hts
# festvox_cmu_us_jmk_arctic_hts
# festvox_cmu_us_slt_arctic_hts
# festvox_cstr_us_awb_arctic_multisyn
# festvox_cstr_us_jmk_arctic_multisyn
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes

NO_BUILD?=	Yes
NO_REGRESS?=	Yes

ARCTIC_US_DEPS?=::audio/festival/festlex/festlex_CMU \
		::audio/festival/festlex/festlex_POSLEX

WRKDIST?=	${WRKDIR}/festival
ARC_PRE?=	${PREFIX}/lib/festival/voices
ARC_WRK?=	${WRKDIST}/lib/voices
