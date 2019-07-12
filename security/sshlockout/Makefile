# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:37 sthen Exp $

COMMENT =	protect against brute force attacks on sshd(8)

DISTNAME =	sshlockout-0.20190130

CATEGORIES =	security

HOMEPAGE =	https://www.dragonflybsd.org/

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c

# snapshot of
# https://github.com/DragonFlyBSD/DragonFlyBSD/tree/master/usr.sbin/sshlockout
MASTER_SITES =	http://distfiles-openbsd.perso.pw/

FAKE_FLAGS =	BINDIR=${PREFIX}/sbin \
		MANDIR=${PREFIX}/man/man
CFLAGS +=	-std=c99

NO_TEST =	Yes

do-configure:
	${SUBST_CMD} ${WRKSRC}/sshlockout.8

.include <bsd.port.mk>
