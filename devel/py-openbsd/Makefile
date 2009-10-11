# $OpenBSD: Makefile,v 1.6 2009/10/11 20:59:37 jasper Exp $

COMMENT=	specific Python bindings for OpenBSD

V=		0.1.2
DISTNAME=	pyopenbsd-${V}
PKGNAME=	py-openbsd-${V}p4
CATEGORIES=	devel

HOMEPAGE=	http://www.nullcube.com/software/pyopenbsd.html

MAINTAINER=	Aldo Cortesi <aldo@nullcube.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		kvm pcap

MASTER_SITES=	http://www.nullcube.com/software/pyopenbsd/download/
EXTRACT_SUFX=	.tgz

MODULES=	lang/python

DOCSDIR=	${PREFIX}/share/doc/py-openbsd
EXAMPLESDIR=	${PREFIX}/share/examples/py-openbsd

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	cd ${WRKSRC}/doc; tar cf - * | tar xf - -C ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLESDIR}

do-regress: fake
	@cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./run_all.py

.include <bsd.port.mk>
