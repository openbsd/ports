# $OpenBSD: Makefile,v 1.12 2011/06/08 17:36:18 jasper Exp $

COMMENT=	usb missile launcher control script
DISTNAME=	pymissile-20061111
REVISION =	4
DISTFILES=	${DISTNAME}.py
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_BACKUP}	

HOMEPAGE =	http://code.google.com/p/pymissile/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

MODULES=	lang/python

RUN_DEPENDS=	devel/pyusb \
		devel/py-urwid

do-extract:
	@cp ${FULLDISTDIR}/${DISTFILES} ${WRKDIR}
	@perl -pi -e 's|_MODPY_BIN_|${MODPY_BIN}|g' ${WRKDIR}/${DISTFILES}

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/${DISTFILES} ${PREFIX}/bin/pymissile

.include <bsd.port.mk>
