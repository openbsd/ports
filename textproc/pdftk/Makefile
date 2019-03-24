# $OpenBSD: Makefile,v 1.18 2019/03/24 22:24:14 sthen Exp $

COMMENT=	pdf swiss army knife
GL_COMMIT=	61981721cab4dc6adfecaa4342479c6232cf59f3
DISTNAME=	pdftk-3.0.1
REVISION=	0
EXTRACT_ONLY=	pdftk-${GL_COMMIT}.tar.bz2 \
		commons-lang3-3.8.1-bin.tar.gz

CATEGORIES=	textproc

MAINTAINER=	Christopher Zimmermann <chrisz@openbsd.org>

# GPLv2+ (main program), see ${WRKDIST}/license_gpl_pdftk/ for libraries
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE =	https://gitlab.com/pdftk-java/

MASTER_SITES =	https://gitlab.com/pdftk-java/pdftk/-/archive/${GL_COMMIT}/
MASTER_SITES0 =	${MASTER_SITE_APACHE:=commons/lang/binaries/}
MASTER_SITES1 =	https://www.bouncycastle.org/download/
WRKDIST =	${WRKDIR}/pdftk-${GL_COMMIT}
DISTFILES =	pdftk-${GL_COMMIT}.tar.bz2 \
		commons-lang3-3.8.1-bin.tar.gz:0 \
		bcprov-jdk15on-160.jar:1

MODULES =	java
MODJAVA_VER =	1.8+
MODJAVA_BUILD =	ant

RUN_DEPENDS +=	java/javaPathHelper

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
