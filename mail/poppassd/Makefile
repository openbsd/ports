# $OpenBSD: Makefile,v 1.3 1999/06/03 00:41:26 brad Exp $

DISTNAME=	pwserve-4
PKGNAME=	poppassd-4.0
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.qualcomm.com/eudora/servers/unix/password/

MAINTAINER=	angelos@openbsd.org

EXTRACT_CMD=	${CAT}
EXTRACT_SUFX=		# empty
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SED} -e '1,16d' | ${SH}

WRKSRC=	${WRKDIR}/poppassd

ALL_TARGET= poppassd

post-install:
	@strip ${PREFIX}/libexec/poppassd
	@${INSTALL_MAN} ${FILESDIR}/poppassd.8 ${PREFIX}/man/man8/

.include <bsd.port.mk>
