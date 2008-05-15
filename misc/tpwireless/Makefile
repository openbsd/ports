# $OpenBSD: Makefile,v 1.5 2008/05/15 18:47:48 djm Exp $

COMMENT=	Set IBM Thinkpad BIOS bit to disable Wireless NIC ID check

PKGNAME=	tpwireless-0.2
CATEGORIES=	misc
DISTFILES=

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

ONLY_FOR_ARCHS=	i386

NO_CHECKSUM=	Yes
WRKDIST=	${WRKDIR}

FAKE_FLAGS=	BINDIR="${PREFIX}/bin"
MAKE_ENV=	CC="${CC}"

# Just link the contained source files into the build environment
post-extract:		
	@lndir ${.CURDIR}/src ${WRKDIR}

NO_REGRESS=	Yes

.include <bsd.port.mk>
