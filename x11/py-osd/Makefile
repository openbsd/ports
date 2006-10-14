# $OpenBSD: Makefile,v 1.1.1.1 2006/10/14 16:35:26 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"python bindings to the XOSD library"

DISTNAME=	pyosd-0.2.14
PKGNAME=	${DISTNAME:S/^py/py-/}
CATEGORIES=	x11

HOMEPAGE=	http://repose.cx/pyosd/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

LIB_DEPENDS=	xosd.>=4::x11/xosd

NO_REGRESS=	Yes

pre-build:
	@perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE},g" ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-osd
	${INSTALL_DATA} ${WRKSRC}/pyosd.html ${PREFIX}/share/doc/py-osd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-osd
	${INSTALL_DATA_DIR} ${PREFIX}/share/py-osd
	${INSTALL_SCRIPT} ${WRKSRC}/modules/*.py ${PREFIX}/share/py-osd

.include <bsd.port.mk>
