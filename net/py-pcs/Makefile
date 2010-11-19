# $OpenBSD: Makefile,v 1.6 2010/11/19 22:31:37 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		Python Packet Construction Set

DISTNAME=		pcs-0.5
PKGNAME=		py-${DISTNAME}
REVISION=		1

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
