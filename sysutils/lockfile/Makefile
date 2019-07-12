# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:45 sthen Exp $

COMMENT=	semaphore-file tool for shell scripting

DISTNAME=	procmail-3.22
PKGNAME=	lockfile-3.22
REVISION=	0
CATEGORIES=	sysutils

MASTER_SITES=	${HOMEPAGE} \
		http://mirror.switch.ch/ftp/mirror/procmail/ \
		http://ftp.kfki.hu/packages/mail/procmail/ \
		http://ftp.ucsb.edu/pub/mirrors/procmail/ \
		http://www.ring.gr.jp/archives/net/mail/procmail/ \
		ftp://ftp.informatik.rwth-aachen.de/pub/packages/procmail/ \
		ftp://ftp.fu-berlin.de/pub/unix/mail/procmail/

HOMEPAGE=	http://www.procmail.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c m

NO_TEST=	Yes

MAKE_FLAGS=	BASENAME="${PREFIX}" CC="${CC}" CFLAGS0="${CFLAGS}" \
		LOCKINGTEST="110" BINSS=lockfile MANS1S=lockfile MANS5S=

do-install:
	cd ${WRKBUILD}/new; \
	    ${INSTALL_PROGRAM} lockfile ${PREFIX}/bin; \
	    ${INSTALL_MAN} lockfile.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
