# $OpenBSD: Makefile,v 1.33 2002/03/21 20:46:23 espie Exp $

COMMENT=	"MS-DOS Telix-like serial communication program"

DISTNAME=	${PKGNAME}.src
PKGNAME=	minicom-1.83.1
CATEGORIES=	comms
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= apps/serialcomm/dialout

HOMEPAGE=	http://www.pp.clinet.fi/~walker/minicom.html

MODULES=	gettext
RUN_DEPENDS=	::comms/kermit \
		::comms/lrzsz

MAINTAINER=     Oleg Safiullin <form@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}/src

pre-build:
	@mv ${WRKBUILD}/xminicom ${WRKBUILD}/xminicom.orig
	@sed -e "s,@PREFIX@,${PREFIX},g" -e "s,@X11BASE@,${X11BASE},g" \
		${FILESDIR}/xminicom.in > ${WRKBUILD}/xminicom

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/minicom
	${INSTALL_DATA} ${WRKBUILD}/minicom.users \
		${PREFIX}/share/examples/minicom

.include <bsd.port.mk>
