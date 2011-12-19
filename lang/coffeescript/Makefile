# $OpenBSD: Makefile,v 1.1.1.1 2011/12/19 22:21:47 jeremy Exp $

COMMENT =	little language that compiles to javascript

DISTNAME =	coffeescript-1.2.0
CATEGORIES =	lang

HOMEPAGE =	http://coffeescript.org

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://distfiles.nl/

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/node

GIT_SHA1 =	9abe614
WRKDIST =	${WRKDIR}/jashkenas-coffee-script-${GIT_SHA1}

NO_BUILD =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Cakefile

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} HOME=${WRKSRC} \
		${SUDO} bin/cake --prefix ${PREFIX} install

do-regress:
	cd ${WRKSRC} && bin/cake test

.include <bsd.port.mk>
