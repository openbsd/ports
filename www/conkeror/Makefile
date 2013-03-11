# $OpenBSD: Makefile,v 1.3 2013/03/11 11:44:41 espie Exp $

COMMENT =		keyboard-oriented Mozilla-based browser

DATE =			20101215
GITREV =		d81cecae9ec9bde209e2cfa0cd4d98a97428d380
DISTNAME =		conkeror-0.9.3.${DATE}
REVISION=	0

CATEGORIES =		www

HOMEPAGE =		http://conkeror.org/

MAINTAINER =		Joshua Elsasser <joshe@openbsd.org>

# mozilla public license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread stdc++

MASTER_SITES =		http://www.elsasser.org/openbsd/distfiles/

BUILD_DEPENDS =		devel/xulrunner/1.9,-devel \
			shells/bash \
			archivers/zip
RUN_DEPENDS =		devel/xulrunner/1.9

MAKE_ENV =		CONKEROR_DATE=${DATE} \
			CONKEROR_GITREV=${GITREV} \
			XULRUNNER=xulrunner1.9

NO_TEST =		Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/contrib/man/conkeror.1
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
