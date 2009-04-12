# $OpenBSD: Makefile,v 1.2 2009/04/12 11:31:30 sthen Exp $

COMMENT =		Python classes providing access to network packets

MODPY_EGG_VERSION =	0.9.6.0
DISTNAME =		Impacket-${MODPY_EGG_VERSION}
PKGNAME =		py-impacket-${MODPY_EGG_VERSION}p0

CATEGORIES =   		net

HOMEPAGE =		http://oss.coresecurity.com/projects/impacket.html

# Apache
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://oss.coresecurity.com/repo/

MODULES =		lang/python

# one example also uses python-tkinter, but it's pretty heavy and
# not required for normal use.
RUN_DEPENDS =		::security/py-crypto \
			::net/py-pcapy

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-impacket
	mv ${PREFIX}/share/doc/Impacket/ ${PREFIX}/share/doc/py-impacket
	mv ${PREFIX}/bin/*py ${PREFIX}/share/examples/py-impacket
	mv ${PREFIX}/bin/* ${PREFIX}/share/doc/py-impacket

.include <bsd.port.mk>
