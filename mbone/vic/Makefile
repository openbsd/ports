# $OpenBSD: Makefile,v 1.25 2002/10/27 20:05:44 naddy Exp $

COMMENT=	"MBONE video tool"

DISTNAME=	vic-2.8ucl4
CATEGORIES=	mbone

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/vic/2.8ucl4/

LIB_DEPENDS=	tcl80.1.5::lang/tcl/8.0 \
		tk80.1.5::x11/tk/8.0

USE_X11=	Yes
CONFIGURE_STYLE= autoconf
MAKE_ENV=	CC="${CC}" CCOPT="${CFLAGS}"

WRKDIST=	${WRKDIR}/vic

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vic ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/histtolut ${PREFIX}/bin

.include <bsd.port.mk>
