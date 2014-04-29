# $OpenBSD: Makefile,v 1.5 2014/04/29 21:38:42 landry Exp $

COMMENT =		keyboard-oriented Mozilla-based browser

DATE =			20131108
GITREV =		38b6279c2053854c2e8f24e70facb5328d9f170c
DISTNAME =		conkeror-1.0pre.${DATE}
DISTFILES =		conkeror-${DATE}-${GITREV}${EXTRACT_SUFX}
WRKDIST =		${WRKDIR}/conkeror
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		http://conkeror.org/

MAINTAINER =		Joshua Elsasser <joshe@openbsd.org>

# mozilla public license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread stdc++

MASTER_SITES =		http://www.elsasser.org/openbsd/distfiles/

BUILD_DEPENDS =		devel/xulrunner/24,-devel \
			shells/bash \
			archivers/zip
RUN_DEPENDS =		devel/xulrunner/24

MAKE_ENV =		CONKEROR_DATE=${DATE} \
			CONKEROR_GITREV=${GITREV} \
			XULRUNNER=xulrunner

NO_TEST =		Yes

# Used to fetch a new snapshot when updating the port. Note that this
# tarball does not have a constant checksum, and so must be mirrored.
snapshot-fetch:
	ftp -o ${DISTFILES} 'http://repo.or.cz/w/conkeror.git?a=snapshot;h=${GITREV};sf=tgz'

pre-configure:
	@${SUBST_CMD} -c ${FILESDIR}/conkeror ${WRKSRC}/conkeror-wrapper.sh

do-build:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${LOCALBASE}/bin/bash contrib/build.sh xulapp

do-install:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${LOCALBASE}/bin/bash contrib/install.sh
	rm -f ${PREFIX}/bin/conkeror
	${INSTALL_SCRIPT} ${WRKSRC}/conkeror-wrapper.sh ${PREFIX}/bin/conkeror
	${INSTALL_DATA} ${WRKSRC}/contrib/man/conkeror.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/conkeror
.for file in COPYING CREDITS
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/conkeror/
.endfor

.include <bsd.port.mk>
