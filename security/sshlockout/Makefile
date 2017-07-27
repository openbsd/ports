# $OpenBSD: Makefile,v 1.1.1.1 2017/07/27 00:08:17 jca Exp $

COMMENT =	protect against brute force attacks on sshd(8)

DISTNAME =	sshlockout-0.20170726

CATEGORIES =	security

HOMEPAGE =	https://www.dragonflybsd.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c

# snapshot of
# https://github.com/DragonFlyBSD/DragonFlyBSD/tree/master/usr.sbin/sshlockout
MASTER_SITES =	http://wxcvbn.org/~jca/distfiles/

FAKE_FLAGS =	BINDIR=${PREFIX}/sbin \
		MANDIR=${PREFIX}/man/man
CFLAGS +=	-std=c99

NO_TEST =	Yes

do-configure:
	sed -i 's,/usr/sbin,${PREFIX}/sbin,g' ${WRKSRC}/sshlockout.8

.include <bsd.port.mk>
