# $OpenBSD: Makefile,v 1.13 2000/06/19 03:14:04 kevlo Exp $

DISTNAME=	bluefish-0.3.6
CATEGORIES=	www 
NEED_VERSION=	1.234
MASTER_SITES=	http://bluefish.openoffice.nl/download/ \
		http://www.student.wau.nl/~olivier/bluefish/download/

RUN_DEPENDS=	weblint::www/weblint
LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		gdk_imlib::graphics/imlib

MAINTAINER=	seanc@cginfo.sk.ca	

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

FAKE=	Yes
FAKE_FLAGS=	DESTDIR="${WRKINST}" install_location='$${prefix}/lib/bluefish'

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bluefish
	@chmod a+rx ${PREFIX}/share/doc/bluefish
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bluefish

.include <bsd.port.mk>
