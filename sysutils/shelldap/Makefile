# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:32 espie Exp $

COMMENT =	browse LDAP server with a shell-like CLI

DISTNAME =	shelldap-0.5
EPOCH =	0
CATEGORIES =	sysutils

HOMEPAGE =	http://projects.martini.nu/shelldap/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	http://www.martini.nu/misc/

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
