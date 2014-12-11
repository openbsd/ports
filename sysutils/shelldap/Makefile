# $OpenBSD: Makefile,v 1.5 2014/12/11 10:23:39 landry Exp $

COMMENT =	browse LDAP server with a shell-like CLI

DISTNAME =	shelldap-1.3.0
HG_COMMIT =	ceb8bd75e05b
EPOCH =	0
CATEGORIES =	sysutils

HOMEPAGE =	http://projects.martini.nu/shelldap/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

DISTFILES =	${DISTNAME}${EXTRACT_SUFX}{${HG_COMMIT}${EXTRACT_SUFX}}
MASTER_SITES =	http://code.martini.nu/shelldap/archive/
WRKDIST =	${WRKDIR}/shelldap-${HG_COMMIT}

NO_BUILD =	Yes
RUN_DEPENDS =	databases/p5-ldap \
		devel/p5-Algorithm-Diff \
		devel/p5-Term-ReadKey \
		devel/p5-Term-ReadLine-Gnu \
		devel/p5-Term-Shell \
		devel/p5-YAML-Syck

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/shelldap ${PREFIX}/bin

.include <bsd.port.mk>
