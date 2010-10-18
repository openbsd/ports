# $OpenBSD: Makefile,v 1.8 2010/10/18 18:36:58 espie Exp $

COMMENT =	cross-platform IRC bot written in Python

MODPY_EGG_VERSION = 0.83.4.1
DISTNAME =	Supybot-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:L}
REVISION =	0
CATEGORIES =	net devel

HOMEPAGE =	http://supybot.com/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=supybot/}

MODULES =	lang/python
USE_GROFF =	Yes

NO_REGRESS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/supybot
	${INSTALL_DATA} ${WRKSRC}/docs/[A-Z]* ${PREFIX}/share/doc/supybot
	${INSTALL_MAN} ${WRKSRC}/docs/man/* ${PREFIX}/man/man1

.include <bsd.port.mk>
