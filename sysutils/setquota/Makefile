# $OpenBSD: Makefile,v 1.26 2011/06/23 22:50:29 naddy Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	command line quota tools

DISTNAME=	setquota-0.1
REVISION =	1
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.jurai.net/users/winter/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}/setquota/
FAKE_FLAGS=	BINDIR=${PREFIX}/sbin \
		LINKS="${PREFIX}/sbin/setquota ${PREFIX}/sbin/getquota" \
		MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
