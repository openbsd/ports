# $OpenBSD: Makefile,v 1.4 2002/05/15 18:05:19 espie Exp $

COMMENT=		"tree window manager"
DISTNAME=		treewm-0.4.2
DISTFILES=		treewm_0.4.2.tar.gz
CATEGORIES=		x11
NEED_VERSION=		1.525

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=treewm/} \
			http://openbsd.rutgers.edu/

HOMEPAGE=		http://treewm.sourceforge.net/

MAINTAINER=		William Yodlowsky <bsd@openbsd.rutgers.edu>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

NO_REGRESS=		Yes

LDFLAGS+=		-L${X11BASE}/lib
CPPFLAGS+=		-I${X11BASE}/include 
CFLAGS+=		-DSHAPE ${CPPFLAGS} -DPIXMAPS=\"${PREFIX}/share/treewm/pixmaps/\"
MAKE_FLAGS+=		CCC='${CXX}' CC='${CC}' CFLAGS='${CFLAGS}' \
			LDFLAGS='${LDFLAGS}'
FAKE_FLAGS+=		PREFIX='${DESTDIR}${PREFIX}'

DOCS	= ChangeLog PROBLEMS README README.tiling
SAMPLES	= default.cfg sample.cfg treewm.kdevprj

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/treewm
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/treewm
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/treewm
.for f in ${SAMPLES}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/examples/treewm
.endfor

.include <bsd.port.mk>
