# $OpenBSD: Makefile,v 1.4 2000/02/11 00:37:29 espie Exp $

DISTNAME=	pwserve-4
PKGNAME=	poppassd-4.0
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.qualcomm.com/eudora/servers/unix/password/
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

EXTRACT_CMD=	${CAT}
EXTRACT_SUFX=		# empty
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SED} -e '1,16d' | ${SH}

WRKDIST=	${WRKDIR}/poppassd

ALL_TARGET= poppassd

post-install:
	@strip ${PREFIX}/libexec/poppassd
	@${INSTALL_MAN} ${FILESDIR}/poppassd.8 ${PREFIX}/man/man8/

.include <bsd.port.mk>
