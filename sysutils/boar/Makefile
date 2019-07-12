# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:40 sthen Exp $

COMMENT=	version control system for large binary files

DISTNAME=	boar-20170509
REVISION=	0

CATEGORIES=	sysutils
HOMEPAGE=	http://www.boarvcs.org

# Apache 2.0
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://distfiles-openbsd.perso.pw/

MODULES=	lang/python

NO_BUILD=	Yes
MODPY_BUILDDEP=	Yes

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/boar

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
