# $OpenBSD: Makefile,v 1.50 2003/11/22 00:56:58 espie Exp $

COMMENT=	"multi-screen window manager"

VERSION=	4.0.1
DISTNAME=	screen-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.uni-erlangen.de/pub/utilities/screen/

HOMEPAGE=	http://www.gnu.org/software/screen/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	VERSION

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sys-screenrc="${SYSCONFDIR}/screenrc"

FLAVORS=	static shm
FLAVOR?=

.if ${FLAVOR:L} == "static"
CONFIGURE_ENV=	LDFLAGS="-static"
.endif
.if ${FLAVOR:L} == "shm"
PATCH_LIST=	patch-* shmpatch-*
.endif

ALL_TARGET=	screen screen.info

post-extract:
	@rm -f ${WRKSRC}/doc/screen.info*

pre-build:
	@perl -pi -e s#!!sysconfdir!!#${SYSCONFDIR}#g ${WRKSRC}/doc/screen.1

post-install:
	@cd ${PREFIX}/bin && mv -f screen-${VERSION} screen
	@chmod 755 ${PREFIX}/bin/screen
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc \
		${PREFIX}/share/examples/screen/screenrc-sample

.include <bsd.port.mk>
