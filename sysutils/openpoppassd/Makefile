# $OpenBSD: Makefile,v 1.18 2019/07/12 20:49:47 sthen Exp $

COMMENT=		daemon for changing passwords

DISTNAME=		openpoppassd-1.1
REVISION =		10
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=		sysutils mail

HOMEPAGE=		http://www.ostc.de/projects.html\#openpoppassd

MAINTAINER=		Hermann Gottschalk <magnum@pestilenz.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=		http://www.ostc.de/
EXTRACT_SUFX=		.tgz

WRKDIST=		${WRKDIR}/openpoppassd

MAKE_ENV=		MANDIR="${PREFIX}/man/man" \
			BINDIR="${PREFIX}/libexec"

NO_TEST=		Yes

.include <bsd.port.mk>
