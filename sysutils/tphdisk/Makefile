# $OpenBSD: Makefile,v 1.4 2005/11/09 01:25:38 jcs Exp $

# not useful on anything else
ONLY_FOR_ARCHS=	i386

COMMENT=	"hibernation file creator for phoenix bios laptops"

PKGNAME=	tphdisk-1.0p0
DISTFILES=	tphdisk.c
CATEGORIES=	sysutils

MASTER_SITES=	http://samba.org/ftp/unpacked/junkcode/

# gpl
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

EXTRACT_ONLY=
WRKDIST=	${WRKDIR}
NO_REGRESS=	yes

FAKE_FLAGS=	PREFIX="${PREFIX}"
MAKE_FILE=	${FILESDIR}/Makefile

WANTLIB=	c

post-extract:
	cp ${FULLDISTDIR}/${DISTFILES} ${WRKDIR}

.include <bsd.port.mk>
