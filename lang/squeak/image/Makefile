# $OpenBSD: Makefile,v 1.4 2008/07/23 11:17:22 espie Exp $


COMMENT =	smalltalk system, basic runtime image

PKG_ARCH =	*

DOTV =		2
IMAGE_V =	7179
DISTFILES =	Squeak$V.${DOTV}-${IMAGE_V}-basic.zip
DISTNAME =	squeak-image-$V.${DOTV}.${IMAGE_V}
MASTER_SITES =	${SQUEAK_SITE}
EXTRACT_ONLY =
NO_BUILD =	Yes

SUBST_VARS +=	IMAGE_V

do-install:
	${INSTALL_DATA_DIR} ${SQUEAK_DIR}
	cd ${SQUEAK_DIR} && unzip -x ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
