# $OpenBSD: Makefile,v 1.2 2002/09/10 01:15:33 naddy Exp $

COMMENT=		"minimalist window manager for the X Window System"

DISTNAME=		evilwm-0.99.7.orig
PKGNAME=		evilwm-0.99.7
CATEGORIES=		x11
HOMEPAGE=		http://evilwm.sourceforge.net/

MAINTAINER=		William Yodlowsky <bsd@openbsd.rutgers.edu>

# 9wm license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=evilwm/}
DISTFILES=		evilwm_0.99.7.orig.tar.gz

USE_X11=		Yes
ALL_TARGET=		allinone
MAKE_FLAGS=		XROOT='${X11BASE}' CC='${CC}'
FAKE_FLAGS=		prefix='${WRKINST}${PREFIX}'

DOCDIR=			${PREFIX}/share/doc/evilwm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/evilwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/evilwm.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.multihead ${DOCDIR}

.include <bsd.port.mk>
