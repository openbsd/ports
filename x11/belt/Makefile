# $OpenBSD: Makefile,v 1.3 2002/03/21 21:25:55 espie Exp $

COMMENT=		"Small menubar for X11 written in Perl/Tk"
V=			1.18
DISTNAME=		belt-${V}
CATEGORIES=     	x11
NEED_VERSION=		1.515

HOMEPAGE=		http://www.stacken.kth.se/~maxz/programming/perl/index.html\#belt
MASTER_SITES=		${HOMEPAGE:S/index.html\#belt//}
MAINTAINER=		Heikki Korpela <heko@openbsd.org>

DISTFILES=		belt-${V} menu.conf.EXAMPLE belticons.tar.gz
DIST_SUBDIR=		belt

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
WRKDIST=		${WRKDIR}
EXTRACT_ONLY=		belticons.tar.gz

RUN_DEPENDS=		::x11/p5-Tk

USE_X11=		Yes

NO_REGRESS=		Yes

post-extract:
	@cp ${FULLDISTDIR}/belt-${V} ${WRKDIR}/

post-patch:
	@perl -pi -e 's,/usr/local/belt/icons,${PREFIX}/share/belt/icons,g; ' \
		-e 's,/usr/local/bin/perl,/usr/bin/perl,' \
		${WRKDIR}/belt-${V}

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/belt-${V} ${PREFIX}/bin/belt
	/usr/bin/pod2man ${WRKDIR}/belt-${V} > ${WRKDIR}/belt.1
	${INSTALL_MAN} ${WRKDIR}/belt.1 ${MANPREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/belt
	${INSTALL_DATA} ${FULLDISTDIR}/menu.conf.EXAMPLE ${PREFIX}/share/examples/belt/
	${INSTALL_DATA_DIR} ${PREFIX}/share/belt/icons
	${INSTALL_DATA} ${WRKDIR}/*.gif ${PREFIX}/share/belt/icons

.include <bsd.port.mk>
