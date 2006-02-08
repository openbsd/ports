# $OpenBSD: Makefile,v 1.11 2006/02/08 04:54:50 david Exp $

COMMENT=		"Small menubar for X11 written in Perl/Tk"
DISTNAME=		belt-1.21
CATEGORIES=     	x11

HOMEPAGE=		http://www.stacken.kth.se/~maxz/programming.html#belt
MASTER_SITES=		http://www.stacken.kth.se/~maxz/files/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

DISTFILES=		${DISTNAME} menu.conf.EXAMPLE belticons.tar.gz
DIST_SUBDIR=		belt

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
PKG_ARCH=		*
WRKDIST=		${WRKDIR}
EXTRACT_ONLY=		belticons.tar.gz

RUN_DEPENDS=		::x11/p5-Tk

USE_X11=		Yes

NO_REGRESS=		Yes

post-extract:
	@cp ${FULLDISTDIR}/${DISTNAME} ${WRKDIR}/

pre-configure:
	@perl -pi -e 's,/usr/local/belt/icons,${PREFIX}/share/belt/icons,g; ' \
		-e 's,/usr/local/bin/perl,/usr/bin/perl,' \
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
