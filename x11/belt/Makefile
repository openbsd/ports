# $OpenBSD: Makefile,v 1.24 2019/07/12 20:51:08 sthen Exp $

COMMENT=		Small menubar for X11 written in Perl/Tk
DISTNAME=		belt-1.21
REVISION=		3
CATEGORIES=     	x11

HOMEPAGE=		http://www.stacken.kth.se/~maxz/programming.html\#belt
MASTER_SITES=		http://www.stacken.kth.se/~maxz/files/

DISTFILES=		${DISTNAME} menu.conf.EXAMPLE belticons.tar.gz
DIST_SUBDIR=		belt

# BSD
PERMIT_PACKAGE=	Yes

NO_BUILD=		Yes
PKG_ARCH=		*
WRKDIST=		${WRKDIR}
EXTRACT_ONLY=		belticons.tar.gz

MODULES =		perl
MODPERL_ADJ_FILES =	${DISTNAME}

RUN_DEPENDS=		x11/p5-Tk


NO_TEST=		Yes

post-extract:
	@cp ${FULLDISTDIR}/${DISTNAME} ${WRKDIR}/

pre-configure:
	@perl -pi -e 's,/usr/local/belt/icons,${PREFIX}/share/belt/icons,g' \
		${WRKDIR}/${DISTNAME}

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/${DISTNAME} ${PREFIX}/bin/belt
	/usr/bin/pod2man ${WRKDIR}/${DISTNAME} > ${WRKDIR}/belt.1
	${INSTALL_MAN} ${WRKDIR}/belt.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/belt
	${INSTALL_DATA} ${FULLDISTDIR}/menu.conf.EXAMPLE ${PREFIX}/share/examples/belt/
	${INSTALL_DATA_DIR} ${PREFIX}/share/belt/icons
	${INSTALL_DATA} ${WRKDIR}/*.gif ${PREFIX}/share/belt/icons

.include <bsd.port.mk>
