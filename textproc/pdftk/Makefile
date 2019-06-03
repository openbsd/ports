# $OpenBSD: Makefile,v 1.21 2019/06/03 16:06:58 sthen Exp $

COMMENT=	pdf swiss army knife

V=		v3.0.3
DISTNAME=	pdftk-$V
PKGNAME=	${DISTNAME:S/-v/-/}
EXTRACT_ONLY=	pdftk-$V.tar.gz \
		commons-lang3-3.8.1-bin.tar.gz

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

CATEGORIES=	textproc

# GPLv2+ (main program), see ${WRKDIST}/license_gpl_pdftk/ for libraries
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://gitlab.com/pdftk-java/

MASTER_SITES=	https://gitlab.com/pdftk-java/pdftk/-/archive/$V/
MASTER_SITES0=	${MASTER_SITE_APACHE:=commons/lang/binaries/}
MASTER_SITES1=	https://www.bouncycastle.org/download/
DISTFILES=	pdftk-$V.tar.gz \
		commons-lang3-3.8.1-bin.tar.gz:0 \
		bcprov-jdk15on-160.jar:1

MODULES=	java
MODJAVA_VER=	1.8+
MODJAVA_BUILD=	ant

RUN_DEPENDS+=	java/javaPathHelper

post-extract:
	mkdir ${WRKSRC}/lib
	cp ${FULLDISTDIR}/bcprov-jdk15on-160.jar ${WRKSRC}/lib/bcprov.jar
	cp ${WRKDIR}/commons-lang3-3.8.1/commons-lang3-3.8.1.jar ${WRKSRC}/lib/commons-lang3.jar

do-build:
	cd ${WRKSRC}; ant jar

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pdftk
	cd ${WRKSRC}; ${INSTALL_DATA} build/jar/pdftk.jar lib/bcprov.jar lib/commons-lang3.jar ${PREFIX}/share/pdftk
	$(INSTALL_MAN) $(WRKDIST)/pdftk.1 $(PREFIX)/man/man1
	$(SUBST_CMD) -m 755 -c $(FILESDIR)/pdftk $(PREFIX)/bin/pdftk

.include <bsd.port.mk>
