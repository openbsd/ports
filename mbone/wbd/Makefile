# $OpenBSD: Makefile,v 1.26 2002/03/21 21:09:18 espie Exp $

COMMENT=	"shared drawing (whiteboard) tool using multicast"

DISTNAME=	wbd-1.0ucl4
CATEGORIES=	mbone
NEED_VERSION=	1.515

MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/wbd/1.0ucl4/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::print/ghostscript/gnu
RUN_DEPENDS=	::print/ghostscript/gnu
LIB_DEPENDS=	tcl80::lang/tcl/8.0 \
		tk80::x11/tk/8.0

MAKE_FILE=	makefile
WRKDIST=	${WRKDIR}/wbd

VMEM_WARNING=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wbd ${PREFIX}/bin

.include <bsd.port.mk>
