# $OpenBSD: Makefile,v 1.32 2005/03/08 07:57:51 alek Exp $

COMMENT=	"shared drawing (whiteboard) tool using multicast"

DISTNAME=	wbd-1.0ucl4
CATEGORIES=	mbone

MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/wbd/1.0ucl4/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c X11 m

RUN_DEPENDS=	:ghostscript-*:print/ghostscript/gnu
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	tcl80:tcl-8.0.*:lang/tcl/8.0 \
		tk80:tk-8.0.*:x11/tk/8.0

MAKE_FILE=	makefile
WRKDIST=	${WRKDIR}/wbd

VMEM_WARNING=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wbd ${PREFIX}/bin

.include <bsd.port.mk>
