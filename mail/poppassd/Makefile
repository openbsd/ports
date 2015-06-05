# $OpenBSD: Makefile,v 1.29 2015/06/05 08:11:53 bentley Exp $

COMMENT=	server: allow users to change password from within Eudora

DISTNAME=	poppassd-4.0
PKGNAME=	${DISTNAME}
REVISION =	1
DISTFILES=	pwserve-4
CATEGORIES=	mail

MASTER_SITES=	http://distcache.freebsd.org/ports-distfiles/ \
		ftp://ftp.qualcomm.com/eudora/servers/unix/password/

# License: NONE
PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license
WANTLIB=		c

EXTRACT_CASES= pwserve-4) ${_PERL_FIX_SHAR} ${FULLDISTDIR}/$$archive | /bin/sh;;

WRKDIST=	${WRKDIR}/poppassd

ALL_TARGET=	poppassd

USE_GROFF =	Yes
NO_TEST=	Yes

post-install:
	@strip ${PREFIX}/libexec/poppassd
	@${INSTALL_MAN} ${FILESDIR}/poppassd.8 ${PREFIX}/man/man8/

.include <bsd.port.mk>
