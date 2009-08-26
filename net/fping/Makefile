# $OpenBSD: Makefile,v 1.24 2009/08/26 00:38:32 sthen Exp $
# $FreeBSD: ports/net/fping/Makefile,v 1.8 2000/03/22 00:26:51 obrien Exp $

COMMENT =		quickly ping N hosts w/o flooding the network

DISTNAME =		fping-2.4b2_to-ipv6
PKGNAME =		${DISTNAME:S/_to-ipv6//}p5

CATEGORIES =		net

HOMEPAGE =		http://www.fping.com/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

# upstream has no version number in filename
#MASTER_SITES =		http://fping.sourceforge.net/download/
MASTER_SITES =		http://spacehopper.org/mirrors/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--bindir=${PREFIX}/sbin
COPTS +=		-DHAVE_PROGNAME

post-build:
	cd ${WRKSRC}; \
	    ${CC} -DHAVE_CONFIG_H -I. ${CFLAGS} -c fping.c -DIPV6 -o fping6.o; \
	    ${CC} ${CFLAGS} -o fping6 fping6.o

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/fping ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKBUILD}/fping6 ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/fping.8 ${PREFIX}/man/man8
	ln ${PREFIX}/man/man8/fping.8 ${PREFIX}/man/man8/fping6.8
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/fping
	${INSTALL_MAN} ${WRKBUILD}/COPYING ${PREFIX}/share/doc/fping
	${INSTALL_MAN} ${WRKBUILD}/README ${PREFIX}/share/doc/fping

.include <bsd.port.mk>
