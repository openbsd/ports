# $OpenBSD: Makefile,v 1.13 2011/09/16 10:31:23 espie Exp $

COMMENT=	usb missile launcher control script
DISTNAME=	pymissile-20061111
REVISION =	5
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
