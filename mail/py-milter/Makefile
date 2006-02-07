# $OpenBSD: Makefile,v 1.4 2006/02/07 10:30:06 mbalmer Exp $

COMMENT=	"Python interface to sendmail milter API"

DISTNAME=	milter-0.7.2
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=	mail

HOMEPAGE=	http://www.bmsi.com/python/milter.html

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	milter

MASTER_SITES=	http://www.bmsi.com/python/

MODULES=	lang/python

DOCSDIR=	${PREFIX}/share/doc/py-milter
EXAMPLESDIR=	${PREFIX}/share/examples/py-milter

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/{bms,sample,rejects,spfquery}.py \
		${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/milter.cfg ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/rhsbl.m4 ${EXAMPLESDIR}

do-regress: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
