# $OpenBSD: Makefile.inc,v 1.1.1.1 2020/08/30 10:05:35 bentley Exp $

EPOCH ?=		0# N.B. in RUN_DEPENDS
CATEGORIES ?=		games x11

DIST_SUBDIR ?=		uqm
MASTER_SITES ?=		${MASTER_SITE_SOURCEFORGE:=sc2/}

HOMEPAGE ?=		http://sc2.sourceforge.net/

MAINTAINER ?=		Anthony J. Bentley <anthony@anjbe.name>

EXTRACT_ONLY ?=

# data CC-BY-NC-SA 2.5
PERMIT_PACKAGE ?=	Yes

NO_BUILD =		Yes

do-install:
.if "${UQM_ADDON:L}" == yes
	${INSTALL_DATA_DIR} ${PREFIX}/share/uqm/content/addons
.for dist in ${DISTFILES}
	${INSTALL_DATA} ${FULLDISTDIR}/${dist} \
		${PREFIX}/share/uqm/content/addons
.endfor
.endif
.if "${UQM_PACKAGE:L}" == yes
	${INSTALL_DATA_DIR} ${PREFIX}/share/uqm/content/packages
.for dist in ${DISTFILES}
	${INSTALL_DATA} ${FULLDISTDIR}/${dist} \
		${PREFIX}/share/uqm/content/packages
.endfor
.endif
