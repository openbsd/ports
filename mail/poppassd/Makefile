# $OpenBSD: Makefile,v 1.18 2002/05/08 18:32:02 millert Exp $

COMMENT=	"server: allow users to change password from within Eudora"

DISTNAME=	poppassd-4.0
DISTFILES=	pwserve-4
CATEGORIES=	mail
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.qualcomm.com/eudora/servers/unix/password/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

EXTRACT_CASES= pwserve-4) ${_PERL_FIX_SHAR} ${FULLDISTDIR}/$$archive | /bin/sh;;

WRKDIST=	${WRKDIR}/poppassd

ALL_TARGET= poppassd

post-install:
	@strip ${PREFIX}/libexec/poppassd
	@${INSTALL_MAN} ${FILESDIR}/poppassd.8 ${PREFIX}/man/man8/

.include <bsd.port.mk>
