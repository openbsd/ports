# $OpenBSD: Makefile,v 1.2 2001/06/20 15:51:13 pvalchev Exp $

COMMENT=	"graphical display for the current uvm status"

# These are not converted to UVM yet.
NOT_FOR_ARCHS=	hppa m68k mips mvme68k pmax sun3

PKGNAME=	xuvmstat-20010220
DISTNAME=	${PKGNAME:S/-//}
CATEGORIES=     sysutils x11
NEED_VERSION=	1.414

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	http://www.netbsd.org/~chuck/gz/

WRKDIST=	${WRKDIR}/xuvmstat
MAKE_ENV=	X11BASE="${X11BASE}"

USE_X11=	Yes

pre-fetch:
	@echo ""
	@echo "  WARNING: This application requires a kernel compiled"
	@echo "  with 'option UVM' for proper operation.  The GENERIC"
	@echo "  kernel contains this option."
	@echo ""

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xuvmstat ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xuvmstat
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xuvmstat

.include <bsd.port.mk>
