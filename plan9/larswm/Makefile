# $OpenBSD: Makefile,v 1.8 2001/01/02 16:01:03 naddy Exp $

DISTNAME=	larswm-7.0.13
CATEGORIES=	plan9
NEED_VERSION=	1.330
MASTER_SITES=	http://www.fnurt.net/larswm/ \
		http://openbsd.rutgers.edu/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= imake

DOCS=		ChangeLog README README.9wm keyboard_refcard.ms \
		larswmrc_refcard.ms mouse_refcard.ms

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/larswm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/larswm
	cd ${WRKSRC}; ${INSTALL_DATA} \
		sample.{barclock,barinfo,editor,larswmrc,xmodmaprc,xsession} \
		${PREFIX}/share/examples/larswm
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/larswm

.include <bsd.port.mk>
