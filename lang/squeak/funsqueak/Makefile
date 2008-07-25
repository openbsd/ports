# $OpenBSD: Makefile,v 1.1.1.1 2008/07/25 14:01:48 espie Exp $


COMMENT =	smalltalk system, exploration image

PKG_ARCH =	*

DISTFILES =	FunSqueak3.10alpha.7.zip
DISTNAME =	squeak-funsqueak-3.10alpha7
MASTER_SITES =	${SQUEAK_SITE}../various_images/FunSqueak/
RUN_DEPENDS =	:squeak-vm->=3.10:lang/squeak/vm
EXTRACT_ONLY =
NO_BUILD =	Yes

do-install:
	${INSTALL_DATA_DIR} ${SQUEAK_DIR}
	cd ${SQUEAK_DIR} && unzip -x ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
