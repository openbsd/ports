# $OpenBSD: Makefile,v 1.7 2000/10/08 19:09:07 brad Exp $

DISTNAME=	larswm-7.0.8
CATEGORIES=	plan9
NEED_VERSION=	1.336
MASTER_SITES=	http://www.fnurt.net/larswm/ \
		http://www.resentment.org/~unix/

MAINTAINER=	William Yodlowsky <unix@resentment.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= imake

DOCS=		ChangeLog README README.9wm keyboard_refcard.ms \
		mouse_refcard.ms larswmrc_refcard.ms

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/larswm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/larswm
	cd ${WRKSRC}; ${INSTALL_DATA} \
		sample.{barclock,barinfo,editor,larswmrc,xsession} \
		${PREFIX}/share/examples/larswm
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/larswm

.include <bsd.port.mk>
