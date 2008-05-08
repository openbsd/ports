# $OpenBSD: Makefile,v 1.2 2008/05/08 22:44:13 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		python interface to adns

V=			1.2.1
DISTNAME=		adns-python-$V
PKGNAME=		py-adns-$V

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
