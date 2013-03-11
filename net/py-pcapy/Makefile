# $OpenBSD: Makefile,v 1.10 2013/03/11 11:35:55 espie Exp $

COMMENT =		libpcap module for Python

MODPY_EGG_VERSION =	0.10.5
DISTNAME =		pcapy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		6

CATEGORIES =		net devel

HOMEPAGE =		http://oss.coresecurity.com/projects/pcapy.html

# Apache
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		${MODPY_WANTLIB} m stdc++ pcap

MASTER_SITES =		http://oss.coresecurity.com/repo/

MODULES =		lang/python

NO_TEST =		Yes

MAKE_ENV +=		LDSHARED="${CC} -shared -fPIC"
MAKE_ENV +=		LDFLAGS="-L${LOCALBASE}/lib"

# fix msdos line-endings
pre-patch:
	cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

.include <bsd.port.mk>
