# $OpenBSD: Makefile,v 1.32 2001/05/06 19:29:21 brad Exp $
# $FreeBSD: Makefile,v 1.3 1998/07/21 11:38:44 eivind Exp $

COMMENT=	"alternative ircII color client"

VERSION=	1.0c17
DISTNAME=	BitchX-${VERSION}
PKGNAME=	${DISTNAME:L}p1
CATEGORIES=	net
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.bitchx.com/pub/BitchX/source/ \
		ftp://ftp.bitchx.org/pub/BitchX/source/ \
		ftp://bitchx.dimension6.com/pub/BitchX/source/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	VERSION

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu dest

FAKE_FLAGS=	INSTALL="${INSTALL_PROGRAM}" INSTALL_DATA="${INSTALL_DATA}"

WRKDIST=	${WRKDIR}/BitchX

post-install:
	@cd ${PREFIX}/bin && ln -sf BitchX-${VERSION} BitchX
	@chown -R root.wheel ${PREFIX}/share/bitchx

.include <bsd.port.mk>
