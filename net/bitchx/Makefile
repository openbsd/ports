# $OpenBSD: Makefile,v 1.38 2003/06/24 20:04:14 avsm Exp $
# $FreeBSD: Makefile,v 1.3 1998/07/21 11:38:44 eivind Exp $

COMMENT=	"alternative ircII color client"

VERSION=	1.0c18
DISTNAME=	ircii-pana-${VERSION}
PKGNAME=	BitchX-${VERSION}p3
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.bitchx.com/pub/BitchX/source/old/ \
		ftp://ftp.bitchx.org/pub/BitchX/source/old/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	VERSION

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu dest

WRKDIST=	${WRKDIR}/BitchX

NO_REGRESS=	Yes

pre-build:
	@mv -f ${WRKBUILD}/Makefile ${WRKBUILD}/Makefile.new
	@sed -e s#bzip2#true#g ${WRKBUILD}/Makefile.new > \
		${WRKBUILD}/Makefile

post-install:
	@cd ${PREFIX}/bin && ln -sf BitchX-${VERSION} BitchX
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/bitchx

.include <bsd.port.mk>
