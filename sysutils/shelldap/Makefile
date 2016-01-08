# $OpenBSD: Makefile,v 1.7 2016/01/08 22:57:47 sthen Exp $

COMMENT =	browse LDAP server with a shell-like CLI

DISTNAME =	shelldap-1.3.1
REVISION =	0
HG_COMMIT =	377bd38ab38c
EPOCH =	0
CATEGORIES =	sysutils

HOMEPAGE =	http://projects.martini.nu/shelldap/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

DISTFILES =	${DISTNAME}${EXTRACT_SUFX}{${HG_COMMIT}${EXTRACT_SUFX}}
MASTER_SITES =	http://code.martini.nu/shelldap/archive/
WRKDIST =	${WRKDIR}/shelldap-${HG_COMMIT}

NO_BUILD =	Yes
NO_TEST =	Yes
RUN_DEPENDS =	databases/p5-ldap \
		devel/p5-Algorithm-Diff \
		devel/p5-Term-ReadKey \
		devel/p5-Term-ReadLine-Gnu \
		devel/p5-Term-Shell \
		devel/p5-YAML-Syck

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/shelldap ${PREFIX}/bin
	pod2man ${WRKSRC}/shelldap > ${PREFIX}/man/man1/shelldap.1

.include <bsd.port.mk>
