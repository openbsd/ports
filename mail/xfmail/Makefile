# $OpenBSD: Makefile,v 1.12 2000/05/23 05:12:18 kevlo Exp $
# $NetBSD: Makefile,v 1.2 1998/07/04 09:19:04 mycroft Exp $

DISTNAME=       xfmail-1.4.4
CATEGORIES=     mail x11
NEED_VERSION=	1.230
MASTER_SITES=	ftp://xfmail.ufies.org/pub/xfmail/release/1.4.4/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS+=	forms::x11/xforms

ONLY_FOR_ARCHS=	i386 sparc m68k hp300

RESTRICTED=	"Selling this software requires permission of the authors."

USE_BZIP2=	Yes
USE_X11=	Yes
GNU_CONFIGURE=	Yes
FAKE=		Yes
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include/X11" \
		LDFLAGS="-L${LOCALBASE}/lib/X11"

pre-configure:
	@cp -f ${FILESDIR}/config.cache ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xfmail
	${INSTALL_DATA} ${WRKSRC}/Copyright ${PREFIX}/share/doc/xfmail
	${INSTALL_PROGRAM} ${WRKSRC}/ui/xfmail ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ui/xfmail.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
