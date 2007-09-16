# $OpenBSD: Makefile,v 1.3 2007/09/16 00:27:06 merdely Exp $


COMMENT=	smalltalk system, runtime image

PKG_ARCH=*

IMAGE_V=5989
DISTFILES=Squeak-$V-${IMAGE_V}.image.tar.gz
DISTNAME=squeak-image-$V.${IMAGE_V}
EXTRACT_ONLY=
NO_BUILD=Yes

do-install:
	cd ${WRKINST} && tar -zx -s ,Squeak-$V-${SRC_V}/,, -f ${FULLDISTDIR}/${DISTFILES}

.include <bsd.port.mk>
