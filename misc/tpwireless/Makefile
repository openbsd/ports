# $OpenBSD: Makefile,v 1.8 2019/09/12 13:42:45 sthen Exp $

COMMENT=	set IBM Thinkpad BIOS bit to disable Wireless NIC ID check

PKGNAME=	tpwireless-0.2
REVISION=	0
CATEGORIES=	misc
DISTFILES=

# ISC
PERMIT_PACKAGE=	Yes
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
