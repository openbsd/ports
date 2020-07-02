# $OpenBSD: Makefile,v 1.12 2020/07/02 08:01:01 landry Exp $

COMMENT =	browse LDAP server with a shell-like CLI

V =		1.5.1
DISTNAME =	shelldap-${V}
HG_COMMIT =	e8af5aa8bd15
EPOCH =	0
CATEGORIES =	sysutils

HOMEPAGE =	https://hg.sr.ht/~mahlon/shelldap/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES =	https://github.com/mahlonsmith/shelldap/releases/download/v${V}/

NO_BUILD =	Yes
NO_TEST =	Yes
RUN_DEPENDS =	databases/p5-ldap \
		devel/p5-Algorithm-Diff \
		devel/p5-Term-ReadLine-Gnu \
		devel/p5-Term-Shell \
		devel/p5-YAML-Syck

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/shelldap ${PREFIX}/bin
	pod2man ${WRKSRC}/shelldap > ${PREFIX}/man/man1/shelldap.1

.include <bsd.port.mk>
