# $OpenBSD: Makefile,v 1.11 2000/10/22 14:03:24 espie Exp $

DISTNAME=	pwserve-4
PKGNAME=	poppassd-4.0
CATEGORIES=	mail
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.qualcomm.com/eudora/servers/unix/password/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_CMD=	cat
EXTRACT_SUFX=		# empty
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | sed -e '1,16d' | ${SH}

WRKDIST=	${WRKDIR}/poppassd

ALL_TARGET= poppassd

post-install:
	@strip ${PREFIX}/libexec/poppassd
	@${INSTALL_MAN} ${FILESDIR}/poppassd.8 ${PREFIX}/man/man8/

.include <bsd.port.mk>
