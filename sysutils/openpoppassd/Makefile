# $OpenBSD: Makefile,v 1.16 2017/12/05 16:25:45 espie Exp $

COMMENT=		daemon for changing passwords

DISTNAME=		openpoppassd-1.1
REVISION =		9
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=		sysutils mail

HOMEPAGE=		http://www.ostc.de/projects.html\#openpoppassd

MAINTAINER=		Hermann Gottschalk <magnum@pestilenz.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=		http://www.ostc.de/
EXTRACT_SUFX=		.tgz

WRKDIST=		${WRKDIR}/openpoppassd

MAKE_ENV=		MANDIR="${PREFIX}/man/man" \
			BINDIR="${PREFIX}/libexec"

NO_TEST=		Yes

.include <bsd.port.mk>
