# $OpenBSD: Makefile,v 1.8 2011/09/16 11:13:40 espie Exp $

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
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		pcap

BUILD_DEPENDS=		devel/pyrex

NO_REGRESS=		Yes

MODULES=		lang/python

post-configure:
	${_MODPY_CMD} config

.include <bsd.port.mk>
