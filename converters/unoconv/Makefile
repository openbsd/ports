# $OpenBSD: Makefile,v 1.16 2021/11/02 00:00:15 sthen Exp $

# sync with editors/libreoffice
ONLY_FOR_ARCHS=		amd64 i386

PKG_ARCH=		*

COMMENT=		UNiversal Office CONVerter

DISTNAME=		unoconv-0.7
REVISION=		9

CATEGORIES=		converters textproc

HOMEPAGE=		http://dag.wiee.rs/home-made/unoconv/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://dag.wieers.com/home-made/unoconv/

MODULES=		lang/python

NO_BUILD=		Yes
NO_TEST=		Yes

MODPY_ADJ_FILES=	unoconv

USE_GMAKE=		Yes

RUN_DEPENDS=		editors/libreoffice

FAKE_FLAGS=		prefix=${TRUEPREFIX} \
			mandir=${TRUEPREFIX}/man

do-install:
	cd ${WRKBUILD} && \
		${SETENV} ${MAKE_ENV} ${_FAKE_SETUP} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} -f ${MAKE_FILE} install
	cd ${WRKBUILD} && \
		${SETENV} ${MAKE_ENV} ${_FAKE_SETUP} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} -f ${MAKE_FILE} install-links

.include <bsd.port.mk>
