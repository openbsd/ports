# $OpenBSD: Makefile,v 1.18 2000/10/22 14:03:25 espie Exp $
# $NetBSD: Makefile,v 1.2 1998/07/04 09:19:04 mycroft Exp $

ONLY_FOR_ARCHS=	i386 sparc m68k hp300

DISTNAME=       xfmail-1.4.6
CATEGORIES=     mail x11
NEED_VERSION=	1.328
MASTER_SITES=	ftp://xfmail.ufies.org/pub/xfmail/release/1.4.6-3/src/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://xfmail.slappy.org/

LIB_DEPENDS=	forms::x11/xforms \
		glib.1.2::devel/glib

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-nas-sound
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/X11" \
		LDFLAGS="-L${LOCALBASE}/lib/X11"

FLAVORS=	threads
FLAVOR?=

.if ${FLAVOR:L} == "threads"
. if ${MACHINE_ARCH} == "sparc"
BROKEN=		"pthreads are currently not working on the SPARC architecture"
. endif
.else
CONFIGURE_ARGS+= --without-threads
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xfmail
	${INSTALL_DATA} ${WRKSRC}/Copyright ${PREFIX}/share/doc/xfmail
	${INSTALL_PROGRAM} ${WRKSRC}/ui/xfmail ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ui/xfmail.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
