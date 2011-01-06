# $OpenBSD: Makefile,v 1.1.1.1 2011/01/06 12:16:39 landry Exp $

COMMENT =	browse LDAP server with a shell-like CLI

DISTNAME =	shelldap-0.20110106
CATEGORIES =	sysutils

HOMEPAGE =	http://projects.martini.nu/shelldap/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	http://distfiles.nl/

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
