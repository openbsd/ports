# $OpenBSD: Makefile,v 1.1.1.1 2006/03/10 09:43:37 espie Exp $
COMMENT=	"musepack, high quality audio compression format"

DISTNAME=	libmpcdec-1.2.2
PKGNAME=	${DISTNAME}

CATEGORIES=	audio

HOMEPAGE=	http://www.musepack.net

MAINTAINER=	David Love <david@dcs.shef.ac.uk>

MASTER_SITES=	http://files2.musepack.net/source/
EXTRACT_SUFX=	.tar.bz2

# BSD
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes

DOCDIR=${PREFIX}/share/doc/libmpcdec

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cp -r ${WRKDIST}/docs/* ${DOCDIR}

SHARED_LIBS=	mpcdec 1.0

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
