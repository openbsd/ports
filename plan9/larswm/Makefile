# $OpenBSD: Makefile,v 1.16 2002/10/30 13:48:48 naddy Exp $

COMMENT=	"9wm with automatic window tiling and virtual desktops"

DISTNAME=	larswm-7.2.8
CATEGORIES=	plan9
MASTER_SITES=	http://www-personal.umich.edu/~larsb/larswm/ \
		http://openbsd.rutgers.edu/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

DOCS=		ChangeLog README README.9wm keyboard_refcard.ms \
		mouse_refcard.ms

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/larswm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/larswm
	cd ${WRKSRC}; ${INSTALL_DATA} \
	    sample.barclock sample.larswmrc sample.xmodmaprc sample.xsession \
	    ${PREFIX}/share/examples/larswm
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/larswm

.include <bsd.port.mk>
