# $OpenBSD: Makefile,v 1.1.1.1 2014/03/26 20:49:27 jca Exp $

COMMENT =		UUCP inetd program

DISTNAME =		uucpd-1.0

CATEGORIES =		net mail news

PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		http://wxcvbn.org/~jca/distfiles/

MAKE_FLAGS =		BINDIR="${PREFIX}/libexec" \
			MANDIR="${PREFIX}/man/man"

NO_TEST =		Yes

do-configure:
	${SUBST_CMD} ${WRKSRC}/pathnames.h ${WRKSRC}/uucpd.8

.include <bsd.port.mk>
