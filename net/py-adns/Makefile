# $OpenBSD: Makefile,v 1.10 2011/09/16 11:13:39 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		python interface to adns

V=			1.2.1
DISTNAME=		adns-python-$V
PKGNAME=		py-adns-$V
REVISION=		3

HOMEPAGE=		http://adns-python.googlecode.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

MODULES=		lang/python
MODPY_ADJ_FILES=	ADNS.py DNSBL.py
CATEGORIES =		net

LIB_DEPENDS=		net/adns
WANTLIB =		adns

NO_REGRESS=		Yes

pre-configure:
	perl -pi -e 's,!!PREFIX!!,${PREFIX},g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
