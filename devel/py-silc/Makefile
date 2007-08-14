# $OpenBSD: Makefile,v 1.4 2007/08/14 10:31:04 martynas Exp $

SHARED_ONLY=	Yes

COMMENT=	"Python bindings for the SILC toolkit"

V=		0.4
DISTNAME=	pysilc-${V}
PKGNAME=	py-silc-${V}p0v0
CATEGORIES=	devel

HOMEPAGE=	http://www.liquidx.net/pysilc/

MAINTAINER=	Martynas Venckus <martynas@altroot.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_BERLIOS:=python-silc/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python converters/libiconv

LIB_DEPENDS=	silc.>=6,silcclient.>=4::devel/silc-toolkit

NO_REGRESS=	Yes

pre-build:
	@perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-silc
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-silc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-silc
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/py-silc

.include <bsd.port.mk>
