# $OpenBSD: Makefile.inc,v 1.2 2004/08/06 03:36:24 jolan Exp $

V?=		1.95
PKGNAME?=	${DISTNAME}-20040804
CATEGORIES?=	audio
MASTER_SITES?=	http://www.cstr.ed.ac.uk/download/festival/${V}/ \
		http://festvox.org/packed/festival/${V}/ \
		http://www.speech.cs.cmu.edu/festival/cstr/festival/${V}/
DIST_SUBDIR?=	festival/${PKGNAME}

# BSD-like:
# festlex_CMU
# festlex_POSLEX
# Non-commercial use:
# festlex_OALD
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes

NO_BUILD?=	Yes
NO_REGRESS?=	Yes

RUN_DEPENDS?=	::audio/festival/core

WRKDIST?=	${WRKDIR}/festival
LEX_PRE?=	${PREFIX}/lib/festival
