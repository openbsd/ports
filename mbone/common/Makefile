# $OpenBSD: Makefile,v 1.15 2000/10/22 14:03:26 espie Exp $

DISTNAME=       common-1.0.6
CATEGORIES=	mbone
NEED_VERSION=	1.230
MASTER_SITES=   http://www-mice.cs.ucl.ac.uk/multimedia/software/common/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	tcl80.1.5::lang/tcl/8.0 \
		tk80.1.5::x11/tk/8.0

USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes
FAKE=		Yes

WRKDIST=		${WRKDIR}/common

do-install:
	${INSTALL_DATA} ${WRKSRC}/libcommon.a ${PREFIX}/lib

.include <bsd.port.mk>
