# $OpenBSD: Makefile,v 1.5 2000/09/22 20:46:18 brad Exp $

DISTNAME=	larswm-6.0.4
CATEGORIES=	plan9
NEED_VERSION=	1.330
MASTER_SITES=	http://www.fnurt.net/larswm/ \
		http://www.resentment.org/~unix/

MAINTAINER=	unix@resentment.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= imake

DOCS=		ChangeLog README README.9wm

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/larswm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/larswm
	cd ${WRKSRC}; ${INSTALL_DATA} sample.{barinfo,larswmrc,xsession} \
		${PREFIX}/share/examples/larswm
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/larswm

.include <bsd.port.mk>
