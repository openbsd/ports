# $OpenBSD: Makefile,v 1.43 2002/09/25 02:06:33 brad Exp $

COMMENT=	"multi-screen window manager"

VERSION=	3.9.13
DISTNAME=	screen-${VERSION}
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.uni-erlangen.de/pub/utilities/screen/

HOMEPAGE=	http://www.gnu.org/software/screen/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	VERSION

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sys-screenrc="${SYSCONFDIR}/screenrc"

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:L} == "static"
CONFIGURE_ENV=	LDFLAGS="-static"
.endif

ALL_TARGET=	screen screen.info

post-extract:
	@rm -f ${WRKSRC}/doc/screen.info*

pre-build:
	@mv -f ${WRKSRC}/doc/screen.1 ${WRKSRC}/doc/screen.1.new
	@sed -e s#!!sysconfdir!!#${SYSCONFDIR}#g \
		${WRKSRC}/doc/screen.1.new > ${WRKSRC}/doc/screen.1

post-install:
	@chmod 755 ${PREFIX}/bin/screen-${VERSION}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc \
		${PREFIX}/share/examples/screen/screenrc-sample

.include <bsd.port.mk>
