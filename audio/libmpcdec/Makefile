# $OpenBSD: Makefile,v 1.4 2006/12/24 22:45:35 steven Exp $
COMMENT=	"musepack decoder library"

DISTNAME=	libmpcdec-1.2.4
SHARED_LIBS +=	mpcdec               2.0      # .5.1
CATEGORIES=	audio

HOMEPAGE=	http://www.musepack.net/

MAINTAINER=	David Love <david@homeunix.org.uk>

MASTER_SITES=	http://files2.musepack.net/source/
EXTRACT_SUFX=	.tar.bz2

# BSD
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes

# documentation is no longer distributed in the tarball
#DOCDIR=${PREFIX}/share/doc/libmpcdec

BUILD_DEPENDS=	:automake-${AUTOMAKE_VERSION}*:devel/automake/${AUTOMAKE_VERSION} \
		:autoconf-${AUTOCONF_VERSION}*:devel/autoconf/${AUTOCONF_VERSION}

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh
	@perl -pi -e 's|-O3\ -fomit-frame-pointer||g' ${WRKSRC}/configure

post-install:
	${INSTALL} ${WRKBUILD}/src/.libs/sample ${PREFIX}/bin/mpc2wav
#	${INSTALL_DATA_DIR} ${DOCDIR}
#	cp -r ${WRKDIST}/docs/* ${DOCDIR}

USE_LIBTOOL=	Yes
WANTLIB=	c m stdc++

CONFIGURE_STYLE=gnu
AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.9

.include <bsd.port.mk>
