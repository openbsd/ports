# $OpenBSD: Makefile,v 1.4 2008/05/11 19:41:20 espie Exp $

COMMENT=	usb missile launcher control script
DISTNAME=	pymissile-20061111
PKGNAME=	${DISTNAME}p0
DISTFILES=	${DISTNAME}.py
CATEGORIES=	misc
MASTER_SITES=	http://mirrors.protection.cx/~jolan/

HOMEPAGE=	http://scott.weston.id.au/software/pymissile-20060126/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

MODULES=	lang/python

RUN_DEPENDS=	:pyusb-*:devel/pyusb \
		:py-urwid-*:devel/py-urwid

do-extract:
	@cp ${FULLDISTDIR}/${DISTFILES} ${WRKDIR}
	@perl -pi -e 's|_MODPY_BIN_|${MODPY_BIN}|g' ${WRKDIR}/${DISTFILES}

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/${DISTFILES} ${PREFIX}/bin/pymissile

.include <bsd.port.mk>
