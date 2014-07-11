# $OpenBSD: Makefile,v 1.12 2014/07/11 16:38:56 ajacoutot Exp $

COMMENT=		daemon for changing passwords

DISTNAME=		openpoppassd-1.1
REVISION =		6
CATEGORIES=		sysutils

HOMEPAGE=		http://www.ostc.de/projects.html\#openpoppassd

MAINTAINER=		Hermann Gottschalk <magnum@pestilenz.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.ostc.de/
EXTRACT_SUFX=		.tgz

WRKDIST=		${WRKDIR}/openpoppassd

WANTLIB=		c

MAKE_ENV=		MANDIR="${PREFIX}/man/man" \
			BINDIR="${PREFIX}/libexec"

.include <bsd.port.mk>
