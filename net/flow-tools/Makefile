# $OpenBSD: Makefile,v 1.12 2005/04/12 19:29:22 msf Exp $

COMMENT=	"cisco NetFlow utilities"

DISTNAME=	flow-tools-0.67
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

HOME_PAGE=	http://www.splintered.net/sw/flow-tools/

MASTER_SITES=	ftp://ftp.eng.oar.net/pub/flow-tools/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

CONFIGURE_STYLE=	gnu

post-patch:
	@cp ${WRKSRC}/lib/radix.h ${WRKSRC}/lib/ftradix.h

do-install:
	(cd ${WRKSRC}/src; env ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} install)
	${INSTALL_MAN} ${WRKSRC}/docs/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/flow-tools/cfg
	${INSTALL_DATA} ${WRKSRC}/configs/*.cfg \
		${PREFIX}/share/examples/flow-tools/cfg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/flow-tools/sym
	${INSTALL_DATA} ${WRKSRC}/configs/*.sym \
		${PREFIX}/share/examples/flow-tools/sym
	${INSTALL_DATA} ${WRKBUILD}/lib/libft.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKBUILD}/lib/ftconfig.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/lib/ftlib.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/lib/ftpaths.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/lib/ftqueue.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/lib/ftradix.h ${PREFIX}/include


.include <bsd.port.mk>
