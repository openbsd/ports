# OpenBSD makefile for:	john
# Version required:	1.5
# Date created:		1999-Apr-7
# Whom:			dugsong@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.10 2000/06/16 23:06:11 espie Exp $

DISTNAME=	john-1.6

CATEGORIES=     security
NEED_VERSION=	1.191
FAKE=No

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	http://www.openwall.com/john/ \
		http://www.false.com/security/john/ \
		ftp://ftp.false.com/pub/security/john/

WRKDIST=	${WRKDIR}/${DISTNAME}/src

.if (${MACHINE_ARCH} == "i386")
PTYPE!=		uname -p | cut -f2 -d' '
.if (${PTYPE} == "K6")
ALL_TARGET=	openbsd-x86-k6
#.elif (${PTYPE} == "Pentium/MMX")
#ALL_TARGET=	openbsd-x86-mmx
.else
ALL_TARGET=	openbsd-x86-any
.endif
.elif (${MACHINE_ARCH} == "sparc")
ALL_TARGET=	linux-sparc
.elif (${MACHINE_ARCH} == "alpha")
ALL_TARGET=	linux-alpha
.else
ALL_TARGET=	generic
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/../run/john ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/../run/mailer ${PREFIX}/bin
	ln -sf ${PREFIX}/bin/john ${PREFIX}/bin/unshadow
	ln -sf ${PREFIX}/bin/john ${PREFIX}/bin/unafs
	ln -sf ${PREFIX}/bin/john ${PREFIX}/bin/unique
	${INSTALL_DATA_DIR} ${PREFIX}/share/john
	${INSTALL_DATA} ${WRKSRC}/../run/* ${PREFIX}/share/john
	(cd ${PREFIX}/share/john && rm -f un* john mailer)
	sed "s%~/%${PREFIX}/share/john/%g" ${WRKSRC}/../run/john.ini > \
		${PREFIX}/share/john/john.ini
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/john
	${INSTALL_DATA} ${WRKSRC}/../doc/* ${PREFIX}/share/doc/john

.include <bsd.port.mk>
