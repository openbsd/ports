# $OpenBSD: Makefile,v 1.24 2000/05/18 04:41:30 form Exp $

PKGNAME=	minicom-1.83.0
DISTNAME=	${PKGNAME}.src
CATEGORIES=	comms
NEED_VERSION=	1.230
FAKE=		Yes

MAINTAINER=     form@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SUNSITE} \
		http://www.pp.clinet.fi/~walker/mc-dev/  \
		http://www.clinet.fi/~walker/  \
		http://www.pp.clinet.fi/~walker/
MASTER_SITE_SUBDIR=     apps/serialcomm/dialout

BUILD_DEPENDS=	gmake::devel/gmake msgfmt::devel/gettext
RUN_DEPENDS=	kermit::comms/kermit lrz::comms/lrzsz

MAKE_ENV=	GMAKE="${GMAKE}"

WRKDIST=	${WRKDIR}/${PKGNAME}/src

pre-build:
	@mv ${WRKBUILD}/xminicom ${WRKBUILD}/xminicom.orig
	@sed -e "s,@PREFIX@,${PREFIX},g" -e "s,@X11BASE@,${X11BASE},g" \
		${FILESDIR}/xminicom.in > ${WRKBUILD}/xminicom

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/minicom
	${INSTALL_DATA} ${WRKBUILD}/minicom.users ${PREFIX}/share/minicom

.include <bsd.port.mk>
