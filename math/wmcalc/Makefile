# $OpenBSD: Makefile,v 1.9 2002/03/21 21:09:18 espie Exp $

COMMENT=		'wm-dockapp; simple four-function calculator'

DISTNAME=		wmcalc-0.3
CATEGORIES=		math x11 x11/windowmaker
NEED_VERSION=		1.515

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.sunet.se/pub/OpenBSD/distfiles/ \
			ftp://ftp.dti.ad.jp/pub/OpenBSD/distfiles/

USE_X11=		Yes
NO_REGRESS=		Yes

SAMPLE_DIR=		${PREFIX}/share/examples/wmcalc
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmcalc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/.wmcalc ${SAMPLE_DIR}/dot.wmcalc.sample

.include <bsd.port.mk>
