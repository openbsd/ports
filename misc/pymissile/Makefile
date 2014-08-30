# $OpenBSD: Makefile,v 1.17 2014/08/30 21:54:08 jasper Exp $

COMMENT=	usb missile launcher control script
DISTNAME=	pymissile-20061111
REVISION =	6
DISTFILES=	${DISTNAME}.py
CATEGORIES=	misc

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
