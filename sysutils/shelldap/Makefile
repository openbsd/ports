COMMENT =	browse LDAP server with a shell-like CLI

V =		1.5.2
DISTNAME =	shelldap-${V}
CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/mahlonsmith/shelldap

EPOCH =	0

# BSD
PERMIT_PACKAGE=	Yes

SITES =		https://github.com/mahlonsmith/shelldap/releases/download/v${V}/

NO_BUILD =	Yes
NO_TEST =	Yes
RUN_DEPENDS =	databases/p5-ldap \
		devel/p5-Algorithm-Diff \
		devel/p5-Term-ReadLine-Gnu \
		devel/p5-Term-Shell \
		devel/p5-Tie-IxHash \
		devel/p5-YAML-Syck

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/shelldap ${PREFIX}/bin
	pod2man ${WRKSRC}/shelldap > ${PREFIX}/man/man1/shelldap.1

.include <bsd.port.mk>
