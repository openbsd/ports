# $OpenBSD: Makefile,v 1.2 2009/08/26 18:49:59 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Qt-based LDAP browser and utility

MODPY_EGG_VERSION=2.4
DISTNAME=	luma-${MODPY_EGG_VERSION}

CATEGORIES=	databases x11

HOMEPAGE=	http://luma.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=luma/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python
RUN_DEPENDS=	::x11/py-qt3 \
		::databases/py-ldap

NO_REGRESS=	Yes

pre-configure:
	cp ${FILESDIR}/setup.py ${WRKSRC}/setup.py
	rm ${WRKSRC}/bin/luma
	mv ${WRKSRC}/lib/luma/luma.py ${WRKSRC}/lib/luma/luma

post-install:
	mv ${PREFIX}/bin/luma \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/luma/luma
	ln -s ${TRUEPREFIX}/lib/python${MODPY_VERSION}/site-packages/luma/luma \
	    ${PREFIX}/bin/luma
	${INSTALL_DATA_DIR} ${PREFIX}/share/luma/
	cd ${WRKSRC}/share/luma && pax -rw icons i18n ${PREFIX}/share/luma/
	${INSTALL_MAN} ${WRKSRC}/share/man/man1/luma.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
