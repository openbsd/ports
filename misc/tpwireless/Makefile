# $OpenBSD: Makefile,v 1.6 2013/03/11 11:23:58 espie Exp $

COMMENT=	Set IBM Thinkpad BIOS bit to disable Wireless NIC ID check

PKGNAME=	tpwireless-0.2
CATEGORIES=	misc
DISTFILES=

# ISC
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

ONLY_FOR_ARCHS=	i386

NO_CHECKSUM=	Yes
WRKDIST=	${WRKDIR}

FAKE_FLAGS=	BINDIR="${PREFIX}/bin"
MAKE_ENV=	CC="${CC}"

# Just link the contained source files into the build environment
post-extract:		
	@lndir ${.CURDIR}/src ${WRKDIR}

NO_TEST=	Yes

.include <bsd.port.mk>
