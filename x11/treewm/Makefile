# $OpenBSD: Makefile,v 1.2 2002/03/21 21:25:56 espie Exp $

COMMENT=		"tree window manager"
DISTNAME=		treewm-0.3.3
CATEGORIES=		x11
NEED_VERSION=		1.515

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE} \
			http://openbsd.rutgers.edu/
MASTER_SITE_SUBDIR=	treewm

HOMEPAGE=		http://treewm.sourceforge.net/

MAINTAINER=		William Yodlowsky <bsd@openbsd.rutgers.edu>

# License: GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/treewm/treewm

USE_X11=		Yes

NO_REGRESS=		Yes

LDFLAGS+=		-L${X11BASE}/lib
CPPFLAGS+=		-I${X11BASE}/include 
CFLAGS+=		-DSHAPE ${CPPFLAGS}
MAKE_FLAGS+=		CCC='${CXX}' CC='${CC}' CFLAGS='${CFLAGS}' \
			LDFLAGS='${LDFLAGS}'

DOCS	= README INSTALL COPYING AUTHORS ChangeLog TODO
SAMPLES	= default.cfg sample.cfg treewm.kdevprj

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/treewm
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKDIR}/treewm/${f} ${PREFIX}/share/doc/treewm
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/treewm
.for f in ${SAMPLES}
	${INSTALL_DATA} ${WRKDIR}/treewm/${f} ${PREFIX}/share/examples/treewm
.endfor

.include <bsd.port.mk>
