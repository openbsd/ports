# $OpenBSD: Makefile,v 1.8 2006/07/19 15:11:53 steven Exp $

COMMENT=	"Cross-platform makefile tool from TrollTech"

DISTNAME=	tmake-1.10
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://www.trolltech.com/developer/downloads/qt/freebies/

# Permission to use, copy, modify, and distribute
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.trolltech.com/freebies/tmake/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

MODULES=	x11/qt3
MODQT_MT=	Yes

do-install:
	@perl -pi \
		-e 's|%%CC%%|${CC}|g;' \
		-e 's|%%CFLAGS%%|${CFLAGS}|g;' \
		-e 's|%%CXX%%|${CXX}|g;' \
		-e 's|%%CXXFLAGS%%|${CXXFLAGS}|g;' \
		-e 's|%%LOCALBASE%%|${LOCALBASE}|g;' \
		-e 's|%%MODQT_INCDIR%%|${MODQT_INCDIR}|g;' \
		-e 's|%%MODQT_LIBDIR%%|${MODQT_LIBDIR}|g;' \
		-e 's|%%MODQT_MOC%%|${MODQT_MOC}|g;' \
		-e 's|%%X11BASE%%|${X11BASE}|g;' \
		${WRKSRC}/lib/openbsd-g++/tmake.conf
	@perl -pi -e 's:%%PREFIX%%:${TRUEPREFIX}:' ${WRKSRC}/bin/tmake
	${INSTALL_SCRIPT} ${WRKSRC}/bin/tmake ${PREFIX}/bin/tmake
	${INSTALL_SCRIPT} ${WRKSRC}/bin/progen ${PREFIX}/bin/progen
	@cd ${WRKSRC}/lib; \
		for dir in openbsd-g++ unix; do \
			${INSTALL_DATA_DIR} ${PREFIX}/share/tmake/$$dir; \
			${INSTALL_DATA} ${WRKSRC}/lib/$$dir/* ${PREFIX}/share/tmake/$$dir; \
		done; \
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tmake
	${INSTALL_DATA} ${WRKSRC}/doc/tmake.html ${PREFIX}/share/doc/tmake/tmake.html
	${INSTALL_DATA} ${WRKSRC}/doc/tmake_ref.html ${PREFIX}/share/doc/tmake/tmake_ref.html

.include <bsd.port.mk>
