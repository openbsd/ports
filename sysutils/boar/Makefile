# $OpenBSD: Makefile,v 1.1.1.1 2018/04/26 17:32:48 solene Exp $

COMMENT=	version control system for large binary files
DISTNAME=	boar-20170509

CATEGORIES=	sysutils
HOMEPAGE=	http://www.boarvcs.org

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles-openbsd.perso.pw/

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_2}
MODPY_ADJ_FILES= boar

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/boar
PKG_ARCH=	*

INSTDIR=	${PREFIX}/share/boar

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/boar/
	cd ${WRKDIST} && pax -rw * ${INSTDIR}
	${INSTALL_DATA} ${PREFIX}/share/boar/README.md \
		${PREFIX}/share/doc/boar/
	rm ${INSTDIR}/README.md
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${INSTDIR}/
	@cd ${PREFIX}/bin && \
		ln -sf ../share/boar/boar boar

.include <bsd.port.mk>
