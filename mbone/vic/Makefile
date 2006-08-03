# $OpenBSD: Makefile,v 1.30 2006/08/03 20:04:52 espie Exp $

COMMENT=	"MBONE video tool"

DISTNAME=	vic-2.8ucl4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mbone

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m stdc++ c X11 Xext

MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/vic/2.8ucl4/

LIB_DEPENDS=	tcl80.>=1.5:tcl-8.0.*:lang/tcl/8.0 \
		tk80.>=1.5:tk-8.0.*:x11/tk/8.0

USE_X11=	Yes
AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
MAKE_ENV=	CC="${CC}" CCOPT="${CFLAGS}"

WRKDIST=	${WRKDIR}/vic

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vic ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/histtolut ${PREFIX}/bin

.include <bsd.port.mk>
