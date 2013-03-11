# $OpenBSD: Makefile,v 1.7 2013/03/11 11:41:28 espie Exp $

COMMENT=		kerberos5 password verification python module

MODPY_EGG_VERSION=	0.5
DISTNAME=		pykpass-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		security

HOMEPAGE=		http://www.huque.com/software/pykpass/

MAINTAINER=		Jason Meltzer <meltzer@strangeresearch.com>

# Python
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB+=		com_err crypto krb5 ssl ${MODPY_WANTLIB}
MODULES=		lang/python

MODPY_SETUPTOOLS=	No

NO_TEST=		Yes

pre-build:
	@perl -pi -e 's|/usr/local/include|/usr/include/kerberosV/|g' ${WRKDIST}/setup.py
	@perl -pi -e 's|/usr/local/lib|/usr/lib|g' ${WRKDIST}/setup.py
	@perl -pi -e "s|'com_err'|'com_err', 'ssl', 'crypto'|" ${WRKDIST}/setup.py
	@perl -pi -e 's|NO_REPLAYCACHE|HEIMDAL|' ${WRKDIST}/setup.py

.include <bsd.port.mk>
