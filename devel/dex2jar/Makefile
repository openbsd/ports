COMMENT =	tools to work with android .dex and java .class files

V =		2.4
PKGNAME =	dex2jar-$V
DISTNAME =	dex-tools-v$V

CATEGORIES =	devel security

HOMEPAGE =	https://github.com/pxb1988/dex2jar

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/pxb1988/dex2jar/releases/download/v$V/

EXTRACT_SUFX =	.zip

MODULES =	java
MODJAVA_VER =	11+

RUN_DEPENDS =	java/javaPathHelper

NO_BUILD =	Yes
NO_TEST =	Yes

SCRIPTS =	\
		apk-sign \
		class-version-switch \
		dex-weaver \
		jar-access \
		jar2jasmin \
		std-apk \
		asm-verify \
		decrypt-string \
		dex2jar \
		jar-weaver \
		jasmin2jar \
		baksmali \
		dex-recompute-checksum \
		dex2smali \
		jar2dex \
		smali

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/dex2jar/
	cp -r ${WRKSRC}/lib/ ${PREFIX}/share/dex2jar/
	${INSTALL_SCRIPT} ${WRKSRC}/*.sh ${PREFIX}/share/dex2jar/
.for i in ${SCRIPTS}
	ln -s ${TRUEPREFIX}/share/dex2jar/d2j-${i}.sh ${PREFIX}/bin/${i}
.endfor

.include <bsd.port.mk>
