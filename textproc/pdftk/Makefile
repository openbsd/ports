# $OpenBSD: Makefile,v 1.24 2020/04/19 15:12:23 sthen Exp $

COMMENT=	pdf swiss army knife

V=		3.0.10
BC=		165
CL3=		3.10
DISTNAME=	pdftk-v$V
PKGNAME=	pdftk-$V
EXTRACT_ONLY=	pdftk-v$V.tar.gz \
		commons-lang3-${CL3}-bin.tar.gz

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

CATEGORIES=	textproc

# GPLv2+ (main program), see ${WRKDIST}/license_gpl_pdftk/ for libraries
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://gitlab.com/pdftk-java/

MASTER_SITES=	https://gitlab.com/pdftk-java/pdftk/-/archive/v$V/
MASTER_SITES0=	${MASTER_SITE_APACHE:=commons/lang/binaries/}
MASTER_SITES1=	https://www.bouncycastle.org/download/
DISTFILES=	pdftk-v$V.tar.gz \
		commons-lang3-${CL3}-bin.tar.gz:0 \
		bcprov-jdk15on-${BC}.jar:1

MODULES=	java
MODJAVA_VER=	1.8+
MODJAVA_BUILD=	ant
MODJAVA_BUILD_TARGET_NAME= jar

RUN_DEPENDS+=	java/javaPathHelper

post-extract:
	mkdir ${WRKSRC}/lib
	cp ${FULLDISTDIR}/bcprov-jdk15on-${BC}.jar ${WRKSRC}/lib/bcprov.jar
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
