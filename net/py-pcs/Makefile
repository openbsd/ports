# $OpenBSD: Makefile,v 1.11 2016/03/20 18:17:50 naddy Exp $

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
