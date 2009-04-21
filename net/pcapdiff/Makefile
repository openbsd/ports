# $OpenBSD: Makefile,v 1.1.1.1 2009/04/21 16:36:23 sthen Exp $

COMMENT =		compare pcap dump files

MODPY_EGG_VERSION =	0.1
DISTNAME =		pcapdiff-${MODPY_EGG_VERSION}

CATEGORIES =		net security

HOMEPAGE =		http://www.eff.org/testyourisp/pcapdiff/

# GPLv2/GPLv3 (only)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://www.eff.org/files/

MODULES =		lang/python
RUN_DEPENDS =		::net/py-pcapy

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/pcapdiff

pre-configure:
	@cp ${FILESDIR}/setup.py ${WRKSRC}

post-install:
.for i in pcapdiff printpackets
	mv ${PREFIX}/bin/$i.py ${PREFIX}/bin/$i
.endfor

.include <bsd.port.mk>
