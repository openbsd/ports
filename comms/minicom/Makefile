# $OpenBSD: Makefile,v 1.29 2000/10/22 14:03:00 espie Exp $

DISTNAME=	${PKGNAME}.src
PKGNAME=	minicom-1.83.1
CATEGORIES=	comms
NEED_VERSION=	1.320
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= apps/serialcomm/dialout

BUILD_DEPENDS=	msgfmt::devel/gettext
RUN_DEPENDS=	kermit::comms/kermit \
		lrz::comms/lrzsz

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
