# $OpenBSD: Makefile,v 1.6 2019/07/12 20:44:07 sthen Exp $

COMMENT =	tools to work with android .dex and java .class files

DISTNAME =	dex2jar-2.0
REVISION =	3

CATEGORIES =	devel security

HOMEPAGE =	https://github.com/pxb1988/dex2jar

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=dex2jar/}

EXTRACT_SUFX =	.zip

MODULES =	java
MODJAVA_VER =	1.8+

RUN_DEPENDS =	java/javaPathHelper

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/dex2jar/
	cp -r ${WRKSRC}/lib/ ${PREFIX}/share/dex2jar/
	${INSTALL_SCRIPT} ${WRKSRC}/*.sh ${PREFIX}/share/dex2jar/
.for i in baksmali dex-recompute-checksum dex2jar dex2smali jar2dex jar2jasmin jasmin2jar smali std-apk
	ln -s ${TRUEPREFIX}/share/dex2jar/d2j-${i}.sh ${PREFIX}/bin/${i}
.endfor

.include <bsd.port.mk>
