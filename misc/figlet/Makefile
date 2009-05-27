# $OpenBSD: Makefile,v 1.19 2009/05/27 10:24:50 benoit Exp $

COMMENT =	generates ASCII banner art

PKGNAME =	figlet-2.2.2
DISTNAME =	figlet222
CATEGORIES =	misc graphics

HOMEPAGE =	http://www.figlet.org/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

MASTER_SITES =	ftp://ftp.figlet.org/pub/figlet/program/unix/
MASTER_SITES0 =	http://www.arcane-labs.net/download/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		figlet-contributed-06092002${EXTRACT_SUFX}:0
MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}" \
		DEFAULTFONTDIR=${PREFIX}/share/figlet

NO_REGRESS =	Yes

pre-configure:
	@perl -pi -e 's|%%OPENBSDFIGLET%%|${LOCALBASE}/share/figlet|g' ${WRKBUILD}/figlist

post-extract:
	@mv ${WRKDIR}/contributed/*.{flf,flc} ${WRKSRC}/fonts
	@mv ${WRKDIR}/contributed/bdffonts/*.flf ${WRKSRC}/fonts
	
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/figlet ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/chkfont ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/chkfont ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/figlist ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/showfigfonts ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/figlet
	${INSTALL_DATA} ${WRKSRC}/fonts/*.{flf,flc} ${PREFIX}/share/figlet
	${INSTALL_MAN} ${WRKSRC}/figlet.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
