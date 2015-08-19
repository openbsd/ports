# $OpenBSD: Makefile,v 1.13 2015/08/19 20:13:59 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		python interface to adns

V=			1.2.1
DISTNAME=		adns-python-$V
PKGNAME=		py-adns-$V
REVISION=		5

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

.include <bsd.port.mk>
