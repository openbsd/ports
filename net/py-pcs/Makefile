# $OpenBSD: Makefile,v 1.10 2013/05/13 19:10:45 fgsch Exp $

SHARED_ONLY=		Yes

COMMENT=		Python Packet Construction Set

DISTNAME=		pcs-0.5
PKGNAME=		py-${DISTNAME}
REVISION=		3

CATEGORIES=		net

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pcs/}

HOMEPAGE=		http://pcs.sf.net

# BSD
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		pcap

BUILD_DEPENDS=		devel/pyrex

NO_TEST=		Yes

MODULES=		lang/python

post-configure:
	${MODPY_CMD} config

.include <bsd.port.mk>
