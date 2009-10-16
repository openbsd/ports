# $OpenBSD: Makefile,v 1.2 2009/10/16 23:24:32 phessler Exp $

V =			1.3.110
COMMENT =		guitar hero clone
DISTNAME =		FretsOnFire-${V}
PKGNAME =		${DISTNAME:L}p0

CATEGORIES =		games x11

HOMEPAGE =		http://fretsonfire.sourceforge.net

# GPLv2 or later
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fretsonfire/}
USE_GMAKE =		Yes

MODULES =		lang/python

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::devel/pygame			\
			::graphics/py-Imaging		\
			::graphics/py-opengl		\
			::math/py-numpy

WRKDIST =		"${WRKDIR}/Frets on Fire-${V}"
NO_REGRESS =		Yes

FFDIR =			${PREFIX}/share/fretsonfire

pre-configure:
			cp ${FILESDIR}/fretsonfire.sh ${WRKDIST}/
			${SUBST_CMD} ${WRKDIST}/fretsonfire.sh

do-install:
			${INSTALL_DATA_DIR} ${FFDIR}/data
			@cd ${WRKDIST}/data && pax -rw . ${FFDIR}/data
			${INSTALL_DATA_DIR} ${FFDIR}/src
			@cd ${WRKDIST}/src && pax -rw . ${FFDIR}/src
			${INSTALL_DATA_DIR} ${FFDIR}/doc
			@cd ${WRKDIST}/doc && pax -rw . ${FFDIR}/doc
			${INSTALL_DATA} ${WRKDIST}/copying.txt ${FFDIR}
			${INSTALL_SCRIPT} ${WRKDIST}/fretsonfire.sh \
			    ${PREFIX}/bin/fretsonfire

.include <bsd.port.mk>
