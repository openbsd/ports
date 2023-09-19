COMMENT=	pdf swiss army knife

V=		3.3.3
# https://www.bouncycastle.org/latest_releases.html
BC=		171
# https://commons.apache.org/proper/commons-lang/
CL3=		3.12.0
DISTNAME=	pdftk-v$V
PKGNAME=	pdftk-$V
EXTRACT_ONLY=	pdftk-v$V.tar.gz \
		commons-lang3-${CL3}-bin.tar.gz

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

CATEGORIES=	textproc

# GPLv2+ (main program), see ${WRKDIST}/license_gpl_pdftk/ for libraries
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://gitlab.com/pdftk-java/

SITES=		https://gitlab.com/pdftk-java/pdftk/-/archive/v$V/
SITES.comm=	${SITE_APACHE:=commons/lang/binaries/}
DISTFILES.comm=	commons-lang3-${CL3}-bin.tar.gz
SITES.bc=	https://www.bouncycastle.org/download/
DISTFILES.bc=	bcprov-jdk18on-${BC}.jar

MODULES=	java
MODJAVA_VER=	1.8+
MODJAVA_BUILD=	ant
MODJAVA_BUILD_TARGET_NAME= jar

RUN_DEPENDS+=	java/javaPathHelper

post-extract:
	mkdir ${WRKSRC}/lib
	cp ${FULLDISTDIR}/bcprov-jdk18on-${BC}.jar ${WRKSRC}/lib/bcprov.jar
	cp ${WRKDIR}/commons-lang3-${CL3}/commons-lang3-${CL3}.jar ${WRKSRC}/lib/commons-lang3.jar

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pdftk
	cd ${WRKSRC}; ${INSTALL_DATA} build/jar/pdftk.jar lib/bcprov.jar lib/commons-lang3.jar ${PREFIX}/share/pdftk
	$(INSTALL_MAN) $(WRKDIST)/pdftk.1 $(PREFIX)/man/man1
	$(SUBST_CMD) -m 755 -c $(FILESDIR)/pdftk $(PREFIX)/bin/pdftk

# tests require additional dependencies (at least: junit, system-rules, jacoco)
NO_TEST=	Yes
#do-test:
#	cd ${WRKSRC} && ${MAKE_ENV} ${LOCALBASE}/bin/ant -lib /path/to/libs test-run

.include <bsd.port.mk>
