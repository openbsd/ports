# $OpenBSD: Makefile,v 1.7 2009/08/24 15:27:49 sthen Exp $
COMMENT=	musepack decoder library

DISTNAME=	libmpcdec-1.2.6
SHARED_LIBS +=	mpcdec               3.0      # .5.2
CATEGORIES=	audio

HOMEPAGE=	http://www.musepack.net/

MAINTAINER=	David Love <david@homeunix.org.uk>

MASTER_SITES=	http://files.musepack.net/source/
EXTRACT_SUFX=	.tar.bz2

# BSD
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes

pre-configure:
	@perl -pi -e 's|-O3\ -fomit-frame-pointer||g' ${WRKSRC}/configure

post-install:
	${INSTALL} ${WRKBUILD}/src/sample ${PREFIX}/bin/mpc2wav

USE_LIBTOOL=	Yes
WANTLIB=	c m stdc++

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
