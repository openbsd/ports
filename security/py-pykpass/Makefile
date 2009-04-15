# $OpenBSD: Makefile,v 1.1.1.1 2009/04/15 21:23:10 sthen Exp $

COMMENT=		kerberos5 password verification python module

MODPY_EGG_VERSION=	0.4
DISTNAME=		pykpass-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		security

HOMEPAGE=		http://www.huque.com/software/pykpass/

MAINTAINER=		Jason Meltzer <meltzer@strangeresearch.com>

# Python
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB+=		com_err crypto krb5 ssl
MODULES=		lang/python

MODPY_SETUPTOOLS=	No

NO_REGRESS=		Yes

pre-build:
	@perl -pi -e 's|/usr/local/include|/usr/include/kerberosV/|g' ${WRKDIST}/setup.py
	@perl -pi -e 's|/usr/local/lib|/usr/lib|g' ${WRKDIST}/setup.py
	@perl -pi -e "s|'com_err'|'com_err', 'ssl', 'crypto'|" ${WRKDIST}/setup.py
	@perl -pi -e 's|NO_REPLAYCACHE|HEIMDAL|' ${WRKDIST}/setup.py

.include <bsd.port.mk>
