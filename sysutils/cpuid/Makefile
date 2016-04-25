# $OpenBSD: Makefile,v 1.1.1.1 2016/04/25 18:28:14 sthen Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	simple tool to dump cpuid information

PKGNAME=	cpuid-20160409
DISTFILES=

CATEGORIES=	sysutils

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

NO_TEST=	Yes

do-build:
	cp ${FILESDIR}/cpuid.c ${WRKSRC}/
	@cd ${WRKSRC}; make cpuid

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cpuid ${PREFIX}/bin

.include <bsd.port.mk>
