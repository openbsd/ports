# $OpenBSD: Makefile,v 1.4 2012/06/12 17:31:32 jasper Exp $

COMMENT = 	Python-like language for the .NET/Mono platform

PNAME =		boo
V =		0.9.4
BUILD_NUM =	9

DISTNAME = 	${PKGNAME}.${BUILD_NUM}
PKGNAME = 	${PNAME}-${V}
CATEGORIES = 	lang
REVISION =	2

EXTRACT_SUFX = 	-src.zip

HOMEPAGE = 	http://boo.codehaus.org/

MAINTAINER = 	Ryan Boggs <rmboggs@gmail.com>

# MIT/BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES = 		http://dist.codehaus.org/boo/distributions/

MODULES = 		lang/mono

BUILD_DEPENDS +=	x11/gtksourceview
RUN_DEPENDS +=		misc/shared-mime-info \
			x11/gtksourceview

DOCDIR =		${PREFIX}/share/doc/${PNAME}
EXAMPLEDIR =		${PREFIX}/share/examples/${PNAME}

WRKDIST =		${WRKDIR}

MODMONO_NANT =		Yes

NANT_FLAGS =		-D:install.prefix=${PREFIX} \
			-D:fakeroot=${WRKINST} \
			-D:skip.vs=true \
			-D:skip.antlr=true

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${EXAMPLEDIR}
	cp -R ${WRKDIST}/docs/* ${DOCDIR}
	cp -R ${WRKDIST}/*.txt ${DOCDIR}
	cp -R ${WRKDIST}/examples/* ${EXAMPLEDIR}
	find ${DOCDIR} ${EXAMPLEDIR} -type f -exec chmod 444 {} \;

.include <bsd.port.mk>
