# $OpenBSD: Makefile,v 1.1.1.1 2009/08/03 11:14:09 sthen Exp $

COMMENT =		python network packet manipulation library

MODPY_EGG_VERSION =	1.6
DISTNAME =		dpkt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		http://code.google.com/p/dpkt/

MAINTAINER =		Thanasoulas Spiros <dsp@physics.uoc.gr>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes 
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://dpkt.googlecode.com/files/

MODULES =		lang/python
# dpkt/bgp.py:678: Warning: 'as' will become a reserved keyword in Python 2.6
# dpkt/bgp.py:715: Warning: 'as' will become a reserved keyword in Python 2.6
MODPY_VERSION =		2.5

.include <bsd.port.mk>
