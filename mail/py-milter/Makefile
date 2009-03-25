# $OpenBSD: Makefile,v 1.12 2009/03/25 13:52:31 jasper Exp $

COMMENT=	Python interface to sendmail milter API

DISTNAME=	pymilter-0.8.10
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=	mail

HOMEPAGE=	http://www.bmsi.com/python/milter.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	milter

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pymilter/}

MODULES=	lang/python
MODPY_VERSION=	2.4

DOCSDIR=	${PREFIX}/share/doc/py-milter
EXAMPLESDIR=	${PREFIX}/share/examples/py-milter

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/{bms,sample,rejects}.py \
		${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/milter.cfg ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/rhsbl.m4 ${EXAMPLESDIR}

# needs the DNS python 2.4 module which we don't provide
NO_REGRESS=	Yes
#do-regress: fake
#	@cd ${WRKSRC} && ${MAKE_ENV} \
#		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
