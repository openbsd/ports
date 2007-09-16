# $OpenBSD: Makefile,v 1.23 2007/09/16 00:17:06 merdely Exp $

COMMENT=	server: allow users to change password from within Eudora

DISTNAME=	poppassd-4.0
PKGNAME=	${DISTNAME}p0
DISTFILES=	pwserve-4
CATEGORIES=	mail

MASTER_SITES=	ftp://ftp.qualcomm.com/eudora/servers/unix/password/

# License: NONE
PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license
WANTLIB=		c

EXTRACT_CASES= pwserve-4) ${_PERL_FIX_SHAR} ${FULLDISTDIR}/$$archive | /bin/sh;;

WRKDIST=	${WRKDIR}/poppassd

ALL_TARGET=	poppassd

NO_REGRESS=	Yes

post-install:
	@strip ${PREFIX}/libexec/poppassd
	@${INSTALL_MAN} ${FILESDIR}/poppassd.8 ${PREFIX}/man/man8/

.include <bsd.port.mk>
