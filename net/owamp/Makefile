# $OpenBSD: Makefile,v 1.1.1.1 2011/07/08 09:31:06 sthen Exp $

COMMENT =	rfc4656 one-way active measurement protocol

DISTNAME =	owamp-3.1

CATEGORIES =	net

HOMEPAGE =	http://www.internet2.edu/performance/owamp/

# Custom, see LICENSE.
# Looks like BSD at first but note last paragraph.
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c m

MASTER_SITES =	http://software.internet2.edu/sources/owamp/

CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/owampd
	${INSTALL_DATA} ${WRKSRC}/conf/owampd.conf \
	    ${WRKSRC}/conf/owampd.limits ${PREFIX}/share/examples/owampd

.include <bsd.port.mk>
