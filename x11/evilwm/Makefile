# $OpenBSD: Makefile,v 1.1.1.1 2002/07/15 20:57:38 naddy Exp $

COMMENT=		"minimalist window manager for the X Window System"

DISTNAME=		evilwm-0.99.4
CATEGORIES=		x11
HOMEPAGE=		http://evilwm.sourceforge.net/

MAINTAINER=		William Yodlowsky <bsd@openbsd.rutgers.edu>

# 9wm license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=evilwm/}
DISTFILES=		evilwm_0.99.4-1.tar.gz

USE_X11=		Yes
ALL_TARGET=		allinone
MAKE_FLAGS=		XROOT='${X11BASE}' CC='${CC}'
FAKE_FLAGS=		prefix='${WRKINST}${PREFIX}'

DOCDIR=			${PREFIX}/share/doc/evilwm

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.multihead ${DOCDIR}

.include <bsd.port.mk>
