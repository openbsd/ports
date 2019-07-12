# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:51 sthen Exp $

COMMENT =	browse LDAP server with a shell-like CLI

DISTNAME =	shelldap-1.4.0
HG_COMMIT =	e8af5aa8bd15
EPOCH =	0
CATEGORIES =	sysutils

HOMEPAGE =	https://bitbucket.org/mahlon/shelldap/

# BSD
PERMIT_PACKAGE=	Yes

DISTFILES =	${DISTNAME}${EXTRACT_SUFX}{${HG_COMMIT}${EXTRACT_SUFX}}
MASTER_SITES =	http://code.martini.nu/shelldap/archive/
WRKDIST =	${WRKDIR}/shelldap-${HG_COMMIT}

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
