# $OpenBSD: Makefile,v 1.7 2011/06/08 18:00:50 jasper Exp $

COMMENT =		libpcap module for Python

MODPY_EGG_VERSION =	0.10.5
DISTNAME =		pcapy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		4

CATEGORIES =		net devel

HOMEPAGE =		http://oss.coresecurity.com/projects/pcapy.html

# Apache
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += 		${MODPY_WANTLIB} m stdc++ pcap

MASTER_SITES =		http://oss.coresecurity.com/repo/

MODULES =		lang/python

NO_REGRESS =		Yes

MAKE_ENV +=		LDSHARED="${CC} -shared -fPIC"
MAKE_ENV +=		LDFLAGS="-L${LOCALBASE}/lib"

# fix msdos line-endings
pre-patch:
	cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

.include <bsd.port.mk>
