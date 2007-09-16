# $OpenBSD: Makefile,v 1.4 2007/09/16 00:27:06 merdely Exp $


COMMENT=	smalltalk system, sources

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
