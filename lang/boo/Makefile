# $OpenBSD: Makefile,v 1.8 2013/04/17 13:52:07 ajacoutot Exp $

BROKEN =	hangs every 2 builds

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

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${EXAMPLEDIR}
	cp -R ${WRKDIST}/docs/* ${DOCDIR}
	cp -R ${WRKDIST}/*.txt ${DOCDIR}
	cp -R ${WRKDIST}/examples/* ${EXAMPLEDIR}
	find ${DOCDIR} ${EXAMPLEDIR} -type f -exec chmod 444 {} \;

.include <bsd.port.mk>
