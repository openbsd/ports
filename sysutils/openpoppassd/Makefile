# $OpenBSD: Makefile,v 1.9 2011/06/23 22:50:29 naddy Exp $

COMMENT=		daemon for changing passwords

DISTNAME=		openpoppassd-1.1
REVISION =		3
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

MAKE_ENV=		MANDIR="${PREFIX}/man/man" \
			BINDIR="${PREFIX}/libexec"

.include <bsd.port.mk>
