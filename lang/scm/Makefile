# $OpenBSD: Makefile,v 1.5 2001/01/31 22:51:40 espie Exp $
# losely based on the FreeBSD port

CATEGORIES=	lang
NEED_VERSION=	1.352

DISTNAME=	scm5d3
PKGNAME=	scm-5d3_2c9

DISTFILES=	scm5d3.zip slib2c9.zip

HOMEPAGE=	http://swissnet.ai.mit.edu/~jaffer/SCM.html

MASTER_SITES=	ftp://ftp.swiss.ai.mit.edu/pub/scm/

MAINTAINER=	Marc Espie <espie@openbsd.org>

WRKDIST=	${WRKDIR}
WRKSRC=		${WRKDIR}/scm

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

SCM_DATA=	COPYING Iedline.scm Init5d3.scm Link.scm \
		Macexp.scm Macro.scm Transcen.scm Tscript.scm mkimpcat.scm \
		disarm.scm build.scm split.scm

FEATURES=arrays bignums cautious edit-line curses posix socket unix \
dynamic-linking i/o-extensions inexact regex

FLAVORS=no_x11

FLAVOR?=
.if ${FLAVOR:L:Mno_x11}
.else
FEATURES+=x
OPTIONS+=--compiler-options=-I${X11BASE}/include
OPTIONS+=--linker-options=-L${X11BASE}/lib
SCM_DATA+=	x11.scm xevent.scm
.endif

post-build:
	cd ${WRKSRC} && PATH=${WRKSRC}:${PORTPATH} /bin/sh ./build \
	    -F '${FEATURES}' \
	    ${OPTIONS} \
	    -h system \
	    -o scm \
	    -s "${PREFIX}/share/scm/"
	cd ${WRKSRC} && PATH=${WRKSRC}:${PORTPATH} /bin/sh ./build \
	    -F '${FEATURES} sicp' \
	    ${OPTIONS} \
	    -h system \
	    -o scm-sicp \
	    -s "${PREFIX}/share/scm/"

ALL_TARGET=	scmlit

#CFLAGS+=	-Dunix
MAKE_FLAGS=	CFLAGS='${CFLAGS}' LD='${CC}'

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/scm	${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/scm-sicp	${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/scm.1	${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/scm
	sed -e 's,@PREFIX@,${TRUEPREFIX},' \
	    <${FILESDIR}/require.scm.in \
	    >${PREFIX}/share/scm/require.scm
.for file in ${SCM_DATA}
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/scm
.endfor
	@${INSTALL_DATA_DIR} ${PREFIX}/share/slib
	${INSTALL_DATA} ${WRKDIR}/slib/*.scm ${PREFIX}/share/slib
	${INSTALL_DATA} ${WRKDIR}/slib/{ANNOUNCE,README,FAQ} ${PREFIX}/share/slib
	${INSTALL_DATA} ${WRKSRC}/scm.info ${PREFIX}/info
	${INSTALL_DATA} ${WRKDIR}/slib/slib.info ${PREFIX}/info
.if ${FLAVOR:L:Mno_x11}
.else
	${INSTALL_DATA} ${WRKSRC}/Xlibscm.info ${PREFIX}/info
.endif

.include <bsd.port.mk>
