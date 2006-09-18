# $OpenBSD: Makefile,v 1.5 2006/09/18 12:19:40 espie Exp $

COMMENT='gui for ogle'
CATEGORIES=x11

DISTNAME=goggles-0.8.0
EXTRACT_SUFX=.tar.bz2
MASTER_SITES=http://www.fifthplanet.net/files/
HOMEPAGE=http://www.fifthplanet.net/goggles.html
MAINTAINER=Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=simple
CONFIGURE_SCRIPT=/bin/sh ${WRKDIST}/gb
CONFIGURE_ARGS+=--fox-prefix=${LOCALBASE} \
		--ogle-prefix=${LOCALBASE} \
		--use-config=${FILESDIR}/config.local \
		--prefix=${LOCALBASE}
WRKCONF=${WRKDIST}
WRKSRC=${WRKDIST}/src
MAKE_FILE=build.mk
ALL_TARGET=
USE_GMAKE=	Yes

CONFIGURE_ENV=LOCALBASE=${LOCALBASE} X11BASE=${X11BASE} LP64_ARCHS="${LP64_ARCHS}"

LIB_DEPENDS=FOX-1.4::devel/fox \
	dvdcontrol,msgevents::x11/ogle
MAKE_FLAGS=-f ${WRKCONF}/conf.mk 

post-build:
	cd ${WRKDIST} && sed -e 's,@prefix@/bin,${LOCALBASE}/libexec,' scripts/goggles.in >scripts/goggles

DOCDIR=${PREFIX}/share/doc/goggles

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/scripts/goggles ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/ogle_gui_goggles ${PREFIX}/libexec
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/desktop/goggles_manual.pdf ${DOCDIR}
# GPL
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
WANTLIB=GL GLU X11 Xext bz2 c jpeg m png pthread stdc++ tiff z

.include <bsd.port.mk>
