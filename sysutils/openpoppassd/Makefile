# $OpenBSD: Makefile,v 1.19 2019/07/17 14:39:43 danj Exp $

COMMENT=		daemon for changing passwords

DISTNAME=		openpoppassd-1.1
REVISION =		11
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=		sysutils mail

HOMEPAGE=		http://www.ostc.de/projects.html\#openpoppassd

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
