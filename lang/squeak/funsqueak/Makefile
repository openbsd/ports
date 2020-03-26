# $OpenBSD: Makefile,v 1.4 2020/03/26 19:55:08 jca Exp $


COMMENT =	smalltalk system, exploration image

PKG_ARCH =	*

DISTFILES =	FunSqueak3.10alpha.7.zip
DISTNAME =	squeak-funsqueak-3.10alpha7
EPOCH =		0
MASTER_SITES =	${SQUEAK_SITE}../various_images/FunSqueak/
RUN_DEPENDS =	lang/squeak/vm>=3.10
BUILD_DEPENDS = archivers/unzip
EXTRACT_ONLY =
NO_BUILD =	Yes

do-install:
	${INSTALL_DATA_DIR} ${SQUEAK_DIR}
	cd ${SQUEAK_DIR} && unzip -x ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
