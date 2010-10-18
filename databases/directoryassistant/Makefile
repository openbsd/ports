# $OpenBSD: Makefile,v 1.9 2010/10/18 17:06:06 espie Exp $

COMMENT=	small application for managing a LDAP address book

DISTNAME=	directoryassistant-2.0
REVISION =	5
CATEGORIES=	databases

HOMEPAGE=	http://olivier.sessink.nl/directoryassistant/

MAINTAINER=	Joerg Zinke <mail@umaxx.net>

# BSD 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python
PY_FLAVOR=	python${MODPY_VERSION}

RUN_DEPENDS=	:py-gtk2-*:x11/py-gtk2 \
                :py-ldap-*-${PY_FLAVOR}:databases/py-ldap,${PY_FLAVOR}

NO_BUILD=	Yes
NO_REGRESS=	Yes
USE_GROFF =	Yes
PKG_ARCH=	*

pre-install:
	@perl -pi -e "s,/usr/bin/python,${MODPY_BIN}," \
		${WRKSRC}/directoryassistant
	@perl -pi -e "s,/etc,${SYSCONFDIR}," ${WRKSRC}/directoryassistant*
	@perl -pi -e "s,/usr/local,${LOCALBASE},g" ${WRKSRC}/directoryassistant

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/directoryassistant ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/directoryassistant.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/directoryassistant
	${INSTALL_DATA} ${WRKSRC}/*.png \
		${PREFIX}/share/directoryassistant/

.include <bsd.port.mk>
