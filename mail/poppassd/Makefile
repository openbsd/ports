# $OpenBSD: Makefile,v 1.12 2000/12/14 13:23:00 espie Exp $

DISTNAME=	poppassd-4.0
DISTFILES=	pwserve-4
CATEGORIES=	mail
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.qualcomm.com/eudora/servers/unix/password/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_CASES= *) sed -e '1,16d' <${FULLDISTDIR}/$$archive | /bin/sh;;

WRKDIST=	${WRKDIR}/poppassd

ALL_TARGET= poppassd

post-install:
	@strip ${PREFIX}/libexec/poppassd
	@${INSTALL_MAN} ${FILESDIR}/poppassd.8 ${PREFIX}/man/man8/

.include <bsd.port.mk>
