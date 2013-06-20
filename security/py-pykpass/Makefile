# $OpenBSD: Makefile,v 1.9 2013/06/20 06:54:37 ajacoutot Exp $

COMMENT=		kerberos5 password verification python module

MODPY_EGG_VERSION=	0.5
DISTNAME=		pykpass-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		security
REVISION=		1

HOMEPAGE=		http://www.huque.com/software/pykpass/

MAINTAINER=		Jason Meltzer <meltzer@strangeresearch.com>

# Python
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 com_err crypto heimbase krb5 pthread python2.7
WANTLIB += roken ssl wind

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/python

MODPY_SETUPTOOLS=	No

MAKE_ENV=		LDFLAGS="$$(krb5-config --libs)"

NO_TEST=		Yes

pre-build:
	@perl -pi -e 's|/usr/local/include|/usr/include/kerberosV/|g' ${WRKDIST}/setup.py
	@perl -pi -e 's|/usr/local/lib|/usr/lib|g' ${WRKDIST}/setup.py
	@perl -pi -e "s|'com_err'|'com_err', 'ssl', 'crypto'|" ${WRKDIST}/setup.py
	@perl -pi -e 's|NO_REPLAYCACHE|HEIMDAL|' ${WRKDIST}/setup.py

.include <bsd.port.mk>
