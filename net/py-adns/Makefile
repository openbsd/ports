# $OpenBSD: Makefile,v 1.15 2016/04/27 17:06:37 jca Exp $

COMMENT=		python interface to adns

V=			1.2.1
DISTNAME=		adns-python-$V
PKGNAME=		py-adns-$V
REVISION=		6

HOMEPAGE=		https://adns-python.googlecode.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

MODULES=		lang/python
MODPY_ADJ_FILES=	ADNS.py DNSBL.py
CATEGORIES =		net

LIB_DEPENDS=		net/adns
WANTLIB =		adns ${MODPY_WANTLIB} pthread

NO_TEST=		Yes

pre-configure:
	perl -pi -e 's,!!PREFIX!!,${PREFIX},g' ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}adns
	sed -n '/^Usage$$/,$$p' ${WRKSRC}/README > \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}adns/README

.include <bsd.port.mk>
