# $OpenBSD: Makefile,v 1.7 2013/03/11 11:41:33 espie Exp $

# not useful on anything else
ONLY_FOR_ARCHS=	i386

COMMENT=	hibernation file creator for Phoenix BIOS laptops

PKGNAME=	tphdisk-1.0
REVISION=	1
DISTFILES=	tphdisk.c
CATEGORIES=	sysutils

MASTER_SITES=	http://samba.org/ftp/unpacked/junkcode/

# GPLv2+
PERMIT_PACKAGE_CDROM=	yes

EXTRACT_ONLY=
WRKDIST=	${WRKDIR}
NO_TEST=	yes

FAKE_FLAGS=	PREFIX="${PREFIX}"
MAKE_FILE=	${FILESDIR}/Makefile

WANTLIB=	c

post-extract:
	cp ${FULLDISTDIR}/${DISTFILES} ${WRKDIR}

.include <bsd.port.mk>
