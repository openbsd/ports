# $OpenBSD: Makefile,v 1.2 2006/03/10 15:53:52 jolan Exp $
COMMENT=	"musepack, high quality audio compression format"

DISTNAME=	libmpcdec-1.2.2
PKGNAME=	${DISTNAME}p0

CATEGORIES=	audio

HOMEPAGE=	http://www.musepack.net/

MAINTAINER=	David Love <david@dcs.shef.ac.uk>

MASTER_SITES=	http://files2.musepack.net/source/
EXTRACT_SUFX=	.tar.bz2

# BSD
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes

DOCDIR=${PREFIX}/share/doc/libmpcdec

pre-configure:
	@perl -pi -e 's|-O3\ -fomit-frame-pointer||g' ${WRKSRC}/configure

post-install:
	${INSTALL} ${WRKBUILD}/src/.libs/sample ${PREFIX}/bin/mpc2wav
	${INSTALL_DATA_DIR} ${DOCDIR}
	cp -r ${WRKDIST}/docs/* ${DOCDIR}

SHARED_LIBS=	mpcdec 1.0

USE_LIBTOOL=	Yes
WANTLIB=	c m stdc++

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
