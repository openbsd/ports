# $OpenBSD: Makefile,v 1.3 2005/10/02 13:16:23 espie Exp $


COMMENT=	"smalltalk system, sources"

DISTFILES=Squeak-${MAJOR}.sources.tar.gz
EXTRACT_ONLY=
NO_BUILD=Yes
DISTNAME=squeak-sources-${MAJOR}
PKGNAME=${DISTNAME}
PKG_ARCH=*
DIST_SUBDIR=squeak-3.6

do-install:
	cd ${WRKINST} && tar -zx -s ,Squeak-${MAJOR}/,, -f ${FULLDISTDIR}/${DISTFILES}


.include <bsd.port.mk>
