# $OpenBSD: Makefile,v 1.12 2016/10/01 11:54:17 naddy Exp $

COMMENT=	standalone Yubikey and OATH/HOTP validation server
DISTNAME=	yubico-yubiserve-3.1
REVISION=	6
EXTRACT_SUFX=	.zip
UNZIP=		unzip -a
PKGNAME=	${DISTNAME:S/yubico-//}

CATEGORIES=	security www

HOMEPAGE=	https://code.google.com/p/yubico-yubiserve/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=yubico-yubiserve/}

MODULES=	lang/python
BUILD_DEPENDS=	databases/sqlite3
RUN_DEPENDS=	databases/py-sqlite \
		security/py-crypto \
		security/py-openssl

NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH=	*
WRKDIST=	${WRKDIR}/yubico-yubiserve

MODPY_ADJ_FILES= yubiserve.py dbconf.py

pre-patch:
	perl -pi -e 's,\?  ,\t,g' ${WRKSRC}/dbconf.py
	echo >> ${WRKSRC}/yubiserve.py

do-configure:
	@cd ${WRKSRC}; ${SUBST_CMD} -m 555 -c yubiserve.py yubiserve \
	    dbconf.py yubiserve-dbconf
	cd ${WRKSRC}; sqlite3 yubikeys.sqlite3 < src/dump.sqlite

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yubiserve \
	    ${PREFIX}/share/examples/yubiserve
	cd ${WRKSRC}; ${INSTALL_DATA} LICENSE README \
	    src/* ${PREFIX}/share/doc/yubiserve; \
	    ${INSTALL_DATA} yubiserve.cfg yubikeys.sqlite3 \
	    ${PREFIX}/share/examples/yubiserve; \
	    ${INSTALL_SCRIPT} yubiserve-dbconf ${PREFIX}/bin/yubiserve-dbconf; \
	    ${INSTALL_SCRIPT} yubiserve ${PREFIX}/sbin/yubiserve

.include <bsd.port.mk>
