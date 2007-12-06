# $OpenBSD: Makefile,v 1.1.1.1 2007/12/06 09:56:30 pyr Exp $

SHARED_ONLY=		Yes

COMMENT=		Python Packet Construction Set

DISTNAME=		pcs-0.5
PKGNAME=		py-${DISTNAME}

CATEGORIES=		net python

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pcs/}

HOMEPAGE=		http://pcs.sf.net

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=		pcap

BUILD_DEPENDS=		::devel/pyrex

NO_REGRESS=		Yes

MODULES=		lang/python

post-configure:
	${_MODPY_CMD} config

.include <bsd.port.mk>
