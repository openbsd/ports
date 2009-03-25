# $OpenBSD: Makefile,v 1.3 2009/03/25 13:52:31 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		python interface to adns

V=			1.2.1
DISTNAME=		adns-python-$V
PKGNAME=		py-adns-$Vp0

HOMEPAGE=		http://adns-python.googlecode.com/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

MODULES=		lang/python
CATEGORIES =		net

LIB_DEPENDS=		adns::net/adns

NO_REGRESS=		Yes

pre-configure:
	perl -pi -e 's,!!PREFIX!!,${PREFIX},g' ${WRKSRC}/setup.py
	find ${WRKSRC} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g;' \
			-e 's,/usr/bin/python,${MODPY_BIN},g'

.include <bsd.port.mk>
