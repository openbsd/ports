# $OpenBSD: Makefile,v 1.27 2013/03/11 11:41:32 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	command line quota tools

DISTNAME=	setquota-0.1
REVISION =	1
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.jurai.net/users/winter/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}/setquota/
FAKE_FLAGS=	BINDIR=${PREFIX}/sbin \
		LINKS="${PREFIX}/sbin/setquota ${PREFIX}/sbin/getquota" \
		MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
