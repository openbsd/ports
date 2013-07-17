# $OpenBSD: Makefile,v 1.17 2013/07/17 03:27:01 bentley Exp $

COMMENT=	small application for managing a LDAP address book

DISTNAME=	directoryassistant-2.0
REVISION=	9
CATEGORIES=	databases

HOMEPAGE=	http://olivier.sessink.nl/directoryassistant/

MAINTAINER =	Joerg Jung <jung@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

RUN_DEPENDS=	x11/py-gtk2 \
		databases/py-ldap

NO_BUILD=	Yes
NO_TEST=	Yes
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
