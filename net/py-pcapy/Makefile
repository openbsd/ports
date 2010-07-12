# $OpenBSD: Makefile,v 1.3 2010/07/12 22:07:41 sthen Exp $

COMMENT =		libpcap module for Python

MODPY_EGG_VERSION =	0.10.5
DISTNAME =		pcapy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net devel

HOMEPAGE =		http://oss.coresecurity.com/projects/pcapy.html

# Apache
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		pcap

MASTER_SITES =		http://oss.coresecurity.com/repo/

MODULES =		lang/python

NO_REGRESS =		Yes

MAKE_ENV +=		LDSHARED="${CC} -shared -fPIC"

# fix msdos line-endings
pre-patch:
	cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

.include <bsd.port.mk>
