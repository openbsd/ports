# $OpenBSD: Makefile,v 1.2 2017/07/05 10:22:06 sthen Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	simple tool to dump cpuid information

PKGNAME=	cpuid-20160409
REVISION=	0
DISTFILES=

CATEGORIES=	sysutils

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
