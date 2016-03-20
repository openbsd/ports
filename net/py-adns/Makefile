# $OpenBSD: Makefile,v 1.14 2016/03/20 16:12:25 naddy Exp $

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
