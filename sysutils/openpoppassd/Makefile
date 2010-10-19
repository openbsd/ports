# $OpenBSD: Makefile,v 1.4 2010/10/19 07:43:01 espie Exp $

COMMENT=		daemon for changing passwords

DISTNAME=		openpoppassd-1.1
PKGNAME=		${DISTNAME}p1
CATEGORIES=		sysutils

HOMEPAGE=		http://www.ostc.de/projects.html\#openpoppassd

MAINTAINER=		Hermann Gottschalk <magnum@pestilenz.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.ostc.de/
EXTRACT_SUFX=		.tgz

WRKDIST=		${WRKDIR}/openpoppassd

WANTLIB=		c

MAKE_ENV=		MANDIR="${PREFIX}/man/cat" \
			BINDIR="${PREFIX}/libexec"
USE_GROFF =	Yes

.include <bsd.port.mk>
