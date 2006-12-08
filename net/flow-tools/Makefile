# $OpenBSD: Makefile,v 1.13 2006/12/08 08:23:42 jakob Exp $

COMMENT=	"cisco NetFlow utilities"

DISTNAME=	flow-tools-0.68
PKGNAME=	${DISTNAME}
CATEGORIES=	net

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

HOME_PAGE=	http://www.splintered.net/sw/flow-tools/

MASTER_SITES=	ftp://ftp.eng.oar.net/pub/flow-tools/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

MODULES=		lang/python

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--localstatedir=/var/flow-tools

BUILD_DEPENDS+=		::textproc/docbook-to-man

PYTHON_SCRIPTS=		bin/flow-log2rrd \
			bin/flow-rpt2rrd \
			bin/flow-rptfmt

post-patch:
	cp ${WRKSRC}/lib/radix.h ${WRKSRC}/lib/ftradix.h
.for file in ${PYTHON_SCRIPTS}
	mv ${WRKSRC}/${file} ${WRKSRC}/${file}.dist
	sed "s!/usr/local/bin/python!${LOCALBASE}/bin/python${MODPY_VERSION}!" \
		< ${WRKSRC}/${file}.dist > ${WRKSRC}/${file}
.endfor

post-configure:
	rm -f ${WRKSRC}/docs/*.[0-9]
	rm -f ${WRKSRC}/docs/*.[0-9].in
	(cd ${WRKSRC}/docs; ${MAKE_PROGRAM})

do-install:
	(cd ${WRKSRC}/src; env ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} install)
	(cd ${WRKSRC}/bin; env ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS} install)
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
