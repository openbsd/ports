# $OpenBSD: Makefile,v 1.2 2005/02/23 19:14:49 alek Exp $


COMMENT=	"smalltalk system, sources"

DISTFILES=Squeak-${MAJOR}.sources.tar.gz
EXTRACT_ONLY=
NO_BUILD=Yes
DISTNAME=squeak-sources-${MAJOR}
PKGNAME=${DISTNAME}p0
PKG_ARCH=*

do-install:
	cd ${WRKINST} && tar -zx -s ,Squeak-${MAJOR}/,, -f ${FULLDISTDIR}/${DISTFILES}


.include <bsd.port.mk>
