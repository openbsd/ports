# $OpenBSD: Makefile,v 1.27 2000/09/16 04:04:27 brad Exp $
# $FreeBSD: Makefile,v 1.3 1998/07/21 11:38:44 eivind Exp $

VERSION=	1.0c17
DISTNAME=	BitchX-${VERSION}
PKGNAME=	bitchx-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.320
MASTER_SITES=	ftp://ftp.bitchx.com/pub/BitchX/source/ \
		ftp://ftp.bitchx.org/pub/BitchX/source/ \
		ftp://bitchx.dimension6.com/pub/BitchX/source/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
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
