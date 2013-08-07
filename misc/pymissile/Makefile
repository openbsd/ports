# $OpenBSD: Makefile,v 1.16 2013/08/07 21:32:12 naddy Exp $

COMMENT=	usb missile launcher control script
DISTNAME=	pymissile-20061111
REVISION =	6
DISTFILES=	${DISTNAME}.py
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_BACKUP}

HOMEPAGE =	https://code.google.com/p/pymissile/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/pyusb \
		devel/py-urwid

do-extract:
	@cp ${FULLDISTDIR}/${DISTFILES} ${WRKDIR}
	@perl -pi -e 's|_MODPY_BIN_|${MODPY_BIN}|g' ${WRKDIR}/${DISTFILES}

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/${DISTFILES} ${PREFIX}/bin/pymissile

.include <bsd.port.mk>
